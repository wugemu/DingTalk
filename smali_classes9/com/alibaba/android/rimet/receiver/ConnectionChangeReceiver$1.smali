.class final Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;
.super Ljava/lang/Object;
.source "ConnectionChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;->b:Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;

    iput-object p2, p0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    iget-object v1, p0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->a()Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;

    .line 69
    .local v0, "callback":Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;
    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;->a()V

    goto :goto_0

    .line 74
    .end local v0    # "callback":Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver$a;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->a()Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    invoke-static {}, Lcom/alibaba/android/rimet/receiver/ConnectionChangeReceiver;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 82
    :cond_2
    return-void
.end method
