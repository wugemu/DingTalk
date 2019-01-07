.class final Lhlt$3$1;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhlt$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhlt$3;


# direct methods
.method constructor <init>(Lhlt$3;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lhlt$3;

    .prologue
    .line 613
    iput-object p1, p0, Lhlt$3$1;->c:Lhlt$3;

    iput-object p2, p0, Lhlt$3$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lhlt$3$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 616
    iget-object v0, p0, Lhlt$3$1;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 618
    .local v8, "source":Ljava/lang/String;
    const-string/jumbo v0, "debug"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "trial"

    .line 619
    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 620
    :cond_0
    const-class v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 621
    .local v6, "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v7

    .line 622
    .local v7, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v7, :cond_1

    .line 623
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .restart local v7    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    iget-object v0, p0, Lhlt$3$1;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "nbversion"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, "version":Ljava/lang/String;
    iget-object v0, p0, Lhlt$3$1;->b:Ljava/lang/String;

    new-instance v1, Lhlt$3$1$1;

    invoke-direct {v1, p0, v8}, Lhlt$3$1$1;-><init>(Lhlt$3$1;Ljava/lang/String;)V

    invoke-interface {v6, v0, v9, v7, v1}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->checkPermission4TmpVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 667
    .end local v6    # "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    .end local v7    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9    # "version":Ljava/lang/String;
    :goto_0
    return-void

    .line 665
    :cond_2
    iget-object v0, p0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    iget-object v1, p0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v1, v1, Lhlt$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v2, v2, Lhlt$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lhlt$3$1;->a:Landroid/os/Bundle;

    iget-object v4, p0, Lhlt$3$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lhlt$3$1;->c:Lhlt$3;

    iget-object v5, v5, Lhlt$3;->b:Lhlt$a;

    invoke-static/range {v0 .. v5}, Lhlt;->a(Lhlt;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lhlt$a;)V

    goto :goto_0
.end method
