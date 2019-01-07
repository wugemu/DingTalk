.class final Lcjr$3;
.super Ljava/lang/Object;
.source "FloatWindowShowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjr$a;

.field final synthetic b:Lcjr;


# direct methods
.method constructor <init>(Lcjr;Lcjr$a;)V
    .locals 0
    .param p1, "this$0"    # Lcjr;

    .prologue
    .line 156
    iput-object p1, p0, Lcjr$3;->b:Lcjr;

    iput-object p2, p0, Lcjr$3;->a:Lcjr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 159
    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v1}, Lcjr;->a(Lcjr;)Lcjs;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    iget-object v2, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v2}, Lcjr;->a(Lcjr;)Lcjs;

    move-result-object v2

    .line 1049
    iget-object v2, v2, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 159
    invoke-static {v1, v2}, Lcjr;->a(Lcjr;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v1}, Lcjr;->b(Lcjr;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v2}, Lcjr;->a(Lcjr;)Lcjs;

    move-result-object v2

    .line 2049
    iget-object v2, v2, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 161
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v1}, Lcjr;->a(Lcjr;)Lcjs;

    move-result-object v1

    .line 2053
    iget-object v1, v1, Lcjs;->d:Lcjs$b;

    .line 162
    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    invoke-static {v1}, Lcjr;->a(Lcjr;)Lcjs;

    move-result-object v1

    .line 3053
    iget-object v1, v1, Lcjs;->d:Lcjs$b;

    .line 163
    invoke-interface {v1}, Lcjs$b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcjr$3;->b:Lcjr;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcjr;->b(Lcjr;Lcjs;)Lcjs;

    .line 175
    iget-object v1, p0, Lcjr$3;->a:Lcjr$a;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcjr$3;->a:Lcjr$a;

    invoke-interface {v1}, Lcjr$a;->a()V

    .line 178
    :cond_1
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "dingtalkbase"

    invoke-static {}, Lcjr;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[FloatWindowShowManager] removeView failed:"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "[FloatWindow] hide error"

    invoke-static {v1}, Lcnt;->a(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_key_has_float_window_failed"

    invoke-static {v1, v2, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 169
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v1, v2, :cond_0

    .line 170
    throw v0
.end method
