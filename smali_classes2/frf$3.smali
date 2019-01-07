.class final Lfrf$3;
.super Ljava/lang/Object;
.source "AlipayLoginPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfrf;


# direct methods
.method constructor <init>(Lfrf;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfrf;

    .prologue
    .line 145
    iput-object p1, p0, Lfrf$3;->b:Lfrf;

    iput-object p2, p0, Lfrf$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 150
    new-instance v0, Lcom/alipay/sdk/app/AuthTask;

    iget-object v3, p0, Lfrf$3;->b:Lfrf;

    .line 1037
    iget-object v3, v3, Lfrf;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 150
    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/AuthTask;-><init>(Landroid/app/Activity;)V

    .line 152
    .local v0, "authTask":Lcom/alipay/sdk/app/AuthTask;
    iget-object v3, p0, Lfrf$3;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/alipay/sdk/app/AuthTask;->authV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 153
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 154
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 155
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lfrf$3;->b:Lfrf;

    .line 2037
    iget-object v3, v3, Lfrf;->c:Landroid/os/Handler;

    .line 156
    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method
