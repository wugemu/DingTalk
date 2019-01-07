.class final Lfcm$5;
.super Landroid/content/BroadcastReceiver;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcm;


# direct methods
.method constructor <init>(Lfcm;)V
    .locals 0
    .param p1, "this$0"    # Lfcm;

    .prologue
    .line 319
    iput-object p1, p0, Lfcm$5;->a:Lfcm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string/jumbo v3, "connection_on_post_changed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 329
    .local v2, "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    if-eqz v2, :cond_0

    .line 332
    iget-object v3, p0, Lfcm$5;->a:Lfcm;

    invoke-static {v3}, Lfcm;->a(Lfcm;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lfcm$5;->a:Lfcm;

    invoke-static {v3}, Lfcm;->a(Lfcm;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lfcm$5;->a:Lfcm;

    invoke-static {v3}, Lfcm;->a(Lfcm;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 334
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 335
    iget-object v3, p0, Lfcm$5;->a:Lfcm;

    invoke-virtual {v3, v2}, Lfcm;->d(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    goto :goto_0
.end method
