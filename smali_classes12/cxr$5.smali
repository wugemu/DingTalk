.class final Lcxr$5;
.super Lcxr$a;
.source "SystemMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcxr;


# direct methods
.method constructor <init>(Lcxr;IZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcxr;
    .param p2, "color"    # I

    .prologue
    .line 496
    iput-object p1, p0, Lcxr$5;->f:Lcxr;

    iput-boolean p3, p0, Lcxr$5;->a:Z

    iput-object p4, p0, Lcxr$5;->b:Landroid/app/Activity;

    iput-object p5, p0, Lcxr$5;->c:Ljava/lang/String;

    iput-object p6, p0, Lcxr$5;->d:Ljava/lang/String;

    iput-wide p7, p0, Lcxr$5;->e:J

    invoke-direct {p0, p1, p2}, Lcxr$a;-><init>(Lcxr;I)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 499
    iget-boolean v0, p0, Lcxr$5;->a:Z

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lcxr$5;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcxr$5;->c:Ljava/lang/String;

    iget-object v5, p0, Lcxr$5;->d:Ljava/lang/String;

    move-object v3, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 506
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v4

    iget-object v5, p0, Lcxr$5;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcxr$5;->d:Ljava/lang/String;

    iget-object v7, p0, Lcxr$5;->c:Ljava/lang/String;

    iget-wide v8, p0, Lcxr$5;->e:J

    move-object v10, v2

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
