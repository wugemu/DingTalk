.class final Lbnv$c;
.super Landroid/text/style/ClickableSpan;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lbnv;


# direct methods
.method constructor <init>(Lbnv;JZ)V
    .locals 0
    .param p2, "uid"    # J
    .param p4, "isFromLike"    # Z

    .prologue
    .line 1419
    iput-object p1, p0, Lbnv$c;->c:Lbnv;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1420
    iput-wide p2, p0, Lbnv$c;->b:J

    .line 1421
    iput-boolean p4, p0, Lbnv$c;->a:Z

    .line 1422
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1426
    iget-boolean v0, p0, Lbnv$c;->a:Z

    if-eqz v0, :cond_1

    .line 1427
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v0, p0, Lbnv$c;->c:Lbnv;

    invoke-static {v0}, Lbnv;->b(Lbnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "detail_click_likes_user"

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1431
    :goto_1
    iget-object v0, p0, Lbnv$c;->c:Lbnv;

    iget-wide v2, p0, Lbnv$c;->b:J

    invoke-virtual {v0, v2, v3}, Lbnv;->a(J)V

    .line 1432
    return-void

    .line 1427
    :cond_0
    const-string/jumbo v0, "feed_click_likes_user"

    goto :goto_0

    .line 1429
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v0, p0, Lbnv$c;->c:Lbnv;

    invoke-static {v0}, Lbnv;->b(Lbnv;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "detail_click_comments_user"

    :goto_2
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "feed_click_comments_user"

    goto :goto_2
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1437
    return-void
.end method
