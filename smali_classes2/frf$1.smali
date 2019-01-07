.class final Lfrf$1;
.super Landroid/os/Handler;
.source "AlipayLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrf;


# direct methods
.method constructor <init>(Lfrf;)V
    .locals 0
    .param p1, "this$0"    # Lfrf;

    .prologue
    .line 78
    iput-object p1, p0, Lfrf$1;->a:Lfrf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "AlipayLoginPresenter"

    const-string/jumbo v1, "!(msg.obj instanceof Map)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance v7, Lfrh;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lfrh;-><init>(Ljava/util/Map;Z)V

    .line 1078
    .local v7, "authResult":Lfrh;
    iget-object v8, v7, Lfrh;->a:Ljava/lang/String;

    .line 93
    .local v8, "resultStatus":Ljava/lang/String;
    const-string/jumbo v0, "9000"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1099
    iget-object v0, v7, Lfrh;->b:Ljava/lang/String;

    .line 93
    const-string/jumbo v1, "200"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lfrf$1;->a:Lfrf;

    .line 1106
    iget-object v4, v7, Lfrh;->c:Ljava/lang/String;

    .line 2162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2163
    const-string/jumbo v0, "AlipayLoginPresenter"

    const-string/jumbo v1, "authCode is empty"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    :goto_1
    iget-object v0, p0, Lfrf$1;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->e()V

    goto :goto_0

    .line 2167
    :cond_2
    new-instance v1, Lfrf$4;

    invoke-direct {v1, v0}, Lfrf$4;-><init>(Lfrf;)V

    .line 2196
    const-class v2, Lcma;

    iget-object v0, v0, Lfrf;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2197
    invoke-static {}, Lfas;->a()Lfas;

    move-result-object v1

    const-string/jumbo v3, "ALIPAY"

    .line 3120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3121
    :cond_3
    if-eqz v0, :cond_1

    .line 3122
    const-string/jumbo v1, "err_parameter"

    const-string/jumbo v2, "Bad request param."

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3127
    :cond_4
    new-instance v6, Lfas$11;

    invoke-direct {v6, v1, v0}, Lfas$11;-><init>(Lfas;Lcma;)V

    .line 3144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 3145
    new-instance v0, Lfwt;

    const/4 v5, 0x0

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 3146
    invoke-static {v2}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v9, v10, v11}, Lfwt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    invoke-virtual {v0}, Lfwt;->a()Lcfo;

    move-result-object v5

    .line 3149
    const-string/jumbo v0, "LoginApiImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v0, Lfas$16;

    invoke-direct/range {v0 .. v6}, Lfas$16;-><init>(Lfas;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcmi;)V

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 100
    :cond_5
    iget-object v0, p0, Lfrf$1;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->a()V

    goto/16 :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
