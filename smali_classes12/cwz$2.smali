.class final Lcwz$2;
.super Ljava/lang/Object;
.source "RobotMarkdownExViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwz;


# direct methods
.method constructor <init>(Lcwz;)V
    .locals 0
    .param p1, "this$0"    # Lcwz;

    .prologue
    .line 286
    iput-object p1, p0, Lcwz$2;->a:Lcwz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 289
    sget v2, Lctk$f;->tag_url:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v2, Lctk$f;->tag_url:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 290
    sget v2, Lctk$f;->tag_url:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, "markdownUrl":Ljava/lang/String;
    iget-object v2, p0, Lcwz$2;->a:Lcwz;

    iget-object v2, v2, Lcwz;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcwz$2;->a:Lcwz;

    iget-object v2, v2, Lcwz;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v4, p0, Lcwz$2;->a:Lcwz;

    iget-object v4, v4, Lcwz;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcwz$2$1;

    invoke-direct {v6, p0, p1}, Lcwz$2$1;-><init>(Lcwz$2;Landroid/view/View;)V

    invoke-static/range {v1 .. v6}, Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$a;)V

    .line 302
    sget v2, Lctk$f;->tag_track:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 304
    :try_start_0
    sget v2, Lctk$f;->tag_track:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 305
    .local v7, "extensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Lebe;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v1    # "markdownUrl":Ljava/lang/String;
    .end local v7    # "extensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 306
    .restart local v1    # "markdownUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    iget-object v3, p0, Lcwz$2;->a:Lcwz;

    invoke-static {v3}, Lcwz;->a(Lcwz;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[RobotMarkdownExViewHolder]mBtnClickListener : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_0

    .line 310
    throw v0
.end method
