.class final Ldgg$4;
.super Ljava/lang/Object;
.source "ChatThemePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldgg;


# direct methods
.method constructor <init>(Ldgg;I)V
    .locals 0
    .param p1, "this$0"    # Ldgg;

    .prologue
    .line 261
    iput-object p1, p0, Ldgg$4;->b:Ldgg;

    iput p2, p0, Ldgg$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 261
    check-cast p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    .line 2265
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 3038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 2265
    invoke-interface {v0}, Ldgf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2268
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 4038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 2268
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 2269
    if-eqz p1, :cond_0

    .line 2272
    iget v0, p0, Ldgg$4;->a:I

    iput v0, p1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->type:I

    .line 2273
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 5299
    iget-object v1, v0, Ldgg;->a:Ldgf$b;

    invoke-interface {v1}, Ldgf$b;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/chat_theme_preview.html"

    new-instance v3, Ldgg$5;

    invoke-direct {v3, v0, p1}, Ldgg$5;-><init>(Ldgg;Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 2274
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 6038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 2274
    invoke-interface {v0}, Ldgf$b;->g()V

    .line 261
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 1038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 284
    invoke-interface {v0}, Ldgf$b;->H_()V

    .line 285
    iget-object v0, p0, Ldgg$4;->b:Ldgg;

    .line 2038
    iget-object v0, v0, Ldgg;->a:Ldgf$b;

    .line 285
    invoke-interface {v0, p1, p2}, Ldgf$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "ChatThemePresenter.createTheme failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 280
    return-void
.end method
