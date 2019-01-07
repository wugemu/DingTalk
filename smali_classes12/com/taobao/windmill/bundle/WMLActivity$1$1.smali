.class final Lcom/taobao/windmill/bundle/WMLActivity$1$1;
.super Ljava/lang/Object;
.source "WMLActivity.java"

# interfaces
.implements Ljpk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/WMLActivity$1;->a(Ljqi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljpk;

.field final synthetic c:Lcom/taobao/windmill/bundle/WMLActivity$1;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity$1;ZLjpk;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/windmill/bundle/WMLActivity$1;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->c:Lcom/taobao/windmill/bundle/WMLActivity$1;

    iput-boolean p2, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->a:Z

    iput-object p3, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->b:Ljpk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValidate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpk$a;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueTag"    # Ljava/lang/String;
    .param p3, "bridge"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "api":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "api:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    new-instance v7, Ljpk$a;

    invoke-direct {v7}, Ljpk$a;-><init>()V

    .line 193
    .local v7, "validateResult":Ljpk$a;
    const/4 v0, 0x1

    iput-boolean v0, v7, Ljpk$a;->a:Z

    .line 194
    invoke-static {p3}, Ljqc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    .end local v7    # "validateResult":Ljpk$a;
    :cond_0
    :goto_0
    return-object v7

    .line 198
    .restart local v7    # "validateResult":Ljpk$a;
    :cond_1
    iget-boolean v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->b:Ljpk;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;

    invoke-direct {v1, p0, v6}, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;-><init>(Lcom/taobao/windmill/bundle/WMLActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->b:Ljpk;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->c:Lcom/taobao/windmill/bundle/WMLActivity$1;

    iget-object v1, v1, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    .line 209
    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->getAppInfo()Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v2, v1, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appKey:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 208
    invoke-interface/range {v0 .. v5}, Ljpk;->onValidate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpk$a;

    move-result-object v7

    goto :goto_0
.end method
