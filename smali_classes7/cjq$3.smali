.class final Lcjq$3;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjq;


# direct methods
.method constructor <init>(Lcjq;)V
    .locals 0
    .param p1, "this$0"    # Lcjq;

    .prologue
    .line 121
    iput-object p1, p0, Lcjq$3;->a:Lcjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    .line 1049
    iget-object v0, v0, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 124
    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    .line 131
    invoke-static {v0}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    .line 132
    invoke-static {v0}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 136
    :cond_2
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    iget-object v1, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v1}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcjq;->b(Lcjq;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    .line 1053
    iget-object v0, v0, Lcjs;->d:Lcjs$b;

    .line 143
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v0}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v0

    .line 2053
    iget-object v0, v0, Lcjs;->d:Lcjs$b;

    .line 143
    invoke-interface {v0}, Lcjs$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatWindowUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    iget-object v1, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v1}, Lcjq;->a(Lcjq;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcjq;->c(Lcjq;Landroid/app/Activity;)V

    goto :goto_0

    .line 152
    :cond_4
    const-string/jumbo v0, "floatwindow_real_show"

    invoke-static {v0}, Lcps;->b(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcjr;->a()Lcjr;

    move-result-object v0

    iget-object v1, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v1}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v1

    .line 2070
    if-eqz v1, :cond_5

    .line 3049
    iget-object v2, v1, Lcjs;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;

    .line 2070
    if-nez v2, :cond_6

    .line 154
    :cond_5
    :goto_1
    iget-object v0, p0, Lcjq$3;->a:Lcjq;

    iget-object v1, p0, Lcjq$3;->a:Lcjq;

    invoke-static {v1}, Lcjq;->b(Lcjq;)Lcjs;

    move-result-object v1

    invoke-static {v0, v1}, Lcjq;->a(Lcjq;Lcjs;)Lcjs;

    goto/16 :goto_0

    .line 2074
    :cond_6
    new-instance v2, Lcjr$1;

    invoke-direct {v2, v0, v1}, Lcjr$1;-><init>(Lcjr;Lcjs;)V

    invoke-virtual {v0, v2}, Lcjr;->a(Lcjr$a;)V

    goto :goto_1
.end method
