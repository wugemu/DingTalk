.class public final Ljqf;
.super Ljava/lang/Object;
.source "WMLPageFrameFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "type"    # Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .prologue
    .line 13
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 1149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 13
    if-eqz v1, :cond_0

    .line 14
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 2149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 14
    invoke-interface {v1, p0, p1}, Ljpz;->getPageFrame(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;

    move-result-object v0

    .line 15
    .local v0, "pageFrame":Ljqe;
    if-eqz v0, :cond_0

    .line 19
    .end local v0    # "pageFrame":Ljqe;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
