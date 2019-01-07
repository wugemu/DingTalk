.class public final Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;
.super Ljava/lang/Object;
.source "CompeteEmotionStateManager.java"

# interfaces
.implements Lcnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;Landroid/widget/ImageView;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->c:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 143
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 146
    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 147
    .local v1, "tagMsg":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    .end local v0    # "tag":Ljava/lang/Object;
    .end local v1    # "tagMsg":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b()Lcns;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "doutu_icon"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    new-instance v1, Lcns;

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Expose-doutu_icon"

    invoke-direct {v1, v2, v3, v0}, Lcns;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method
