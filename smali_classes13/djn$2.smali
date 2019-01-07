.class public final Ldjn$2;
.super Ljava/lang/Object;
.source "EmotionGuideChatManager.java"

# interfaces
.implements Lcnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:I

.field final synthetic d:Ldjn;


# direct methods
.method public constructor <init>(Ldjn;Landroid/widget/TextView;Lcom/alibaba/wukong/im/Message;I)V
    .locals 0
    .param p1, "this$0"    # Ldjn;

    .prologue
    .line 147
    iput-object p1, p0, Ldjn$2;->d:Ldjn;

    iput-object p2, p0, Ldjn$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Ldjn$2;->b:Lcom/alibaba/wukong/im/Message;

    iput p4, p0, Ldjn$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v2, p0, Ldjn$2;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldjn$2;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Ldjn$2;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 154
    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 155
    .local v1, "tagMsg":Lcom/alibaba/wukong/im/Message;
    iget-object v2, p0, Ldjn$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Ldjn$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 161
    .end local v0    # "tag":Ljava/lang/Object;
    .end local v1    # "tagMsg":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final b()Lcns;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    const-string/jumbo v0, ""

    .line 167
    .local v0, "exposeEvent":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 168
    .local v2, "spamUrl":Ljava/lang/String;
    iget v3, p0, Ldjn$2;->c:I

    sget v4, Ldjn$b;->a:I

    if-ne v3, v4, :cond_2

    .line 169
    const-string/jumbo v0, "Expose-first_time_see_gif_tail"

    .line 170
    const-string/jumbo v3, "a2o5v.12290095"

    const-string/jumbo v4, "first_time_see_gif_tail"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 177
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Ldjn$2;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Ldjn$2;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-static {v3}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v1

    .line 179
    const-string/jumbo v3, "spm-url"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1
    new-instance v3, Lcns;

    const-string/jumbo v4, "Page_Chat_Detail"

    invoke-direct {v3, v4, v0, v1}, Lcns;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    .line 171
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget v3, p0, Ldjn$2;->c:I

    sget v4, Ldjn$b;->b:I

    if-ne v3, v4, :cond_0

    .line 172
    const-string/jumbo v0, "Expose-festival_gif_tail"

    .line 173
    const-string/jumbo v3, "a2o5v.12290095"

    const-string/jumbo v4, "festival_gif_tail"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
