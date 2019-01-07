.class final Lbnv$b;
.super Landroid/text/style/ClickableSpan;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:J

.field b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

.field final synthetic c:Lbnv;


# direct methods
.method constructor <init>(Lbnv;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
    .locals 0
    .param p2, "commentId"    # J
    .param p4, "commentObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .prologue
    .line 1444
    iput-object p1, p0, Lbnv$b;->c:Lbnv;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1445
    iput-wide p2, p0, Lbnv$b;->a:J

    .line 1446
    iput-object p4, p0, Lbnv$b;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 1447
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1451
    iget-object v2, p0, Lbnv$b;->c:Lbnv;

    invoke-static {v2}, Lbnv;->f(Lbnv;)Lbnv$d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1453
    iget-object v2, p0, Lbnv$b;->c:Lbnv;

    invoke-static {v2}, Lbnv;->b(Lbnv;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "detail_posts_reply_to_comment"

    .line 1454
    .local v0, "from":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lbqn;->a()Ljava/util/Map;

    move-result-object v1

    .line 1455
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "contentType"

    iget-object v3, p0, Lbnv$b;->c:Lbnv;

    invoke-static {v3}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getContentType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1457
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1459
    iget-object v2, p0, Lbnv$b;->c:Lbnv;

    invoke-static {v2}, Lbnv;->f(Lbnv;)Lbnv$d;

    move-result-object v2

    iget-object v3, p0, Lbnv$b;->c:Lbnv;

    invoke-static {v3}, Lbnv;->c(Lbnv;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v3

    iget-object v4, p0, Lbnv$b;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v5, p0, Lbnv$b;->c:Lbnv;

    invoke-virtual {v5}, Lbnv;->getAdapterPosition()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lbnv$d;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;I)V

    .line 1461
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1453
    :cond_1
    const-string/jumbo v0, "feed_posts_reply_to_comment"

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1466
    return-void
.end method
