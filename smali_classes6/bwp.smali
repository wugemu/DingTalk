.class public final Lbwp;
.super Ljava/lang/Object;
.source "LiveNavigator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .param p3, "anchorId"    # J
    .param p5, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 131
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v8, "https://live.dingtalk.com/data.html"

    new-instance v1, Lbwp$11;

    move-object v2, p5

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lbwp$11;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 146
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "liveUuid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 112
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://live.dingtalk.com/detail.html"

    new-instance v0, Lbwp$10;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lbwp$10;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playUrl"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 91
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    const-string/jumbo v9, "https://live.dingtalk.com/video.html"

    new-instance v0, Lbwp$9;

    move-object/from16 v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbwp$9;-><init>(Lcom/alibaba/doraemon/navigator/IntentRewriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v8, v9, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 108
    return-void
.end method
