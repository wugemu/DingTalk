.class final Lbnv$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnv;


# direct methods
.method constructor <init>(Lbnv;)V
    .locals 0
    .param p1, "this$0"    # Lbnv;

    .prologue
    .line 309
    iput-object p1, p0, Lbnv$3;->a:Lbnv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 312
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const-string/jumbo v3, "circle_on_post_changed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 319
    .local v2, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    if-eqz v2, :cond_0

    .line 322
    iget-object v3, p0, Lbnv$3;->a:Lbnv;

    invoke-static {v3}, Lbnv;->a(Lbnv;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbnv$3;->a:Lbnv;

    invoke-static {v3}, Lbnv;->a(Lbnv;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lbnv$3;->a:Lbnv;

    invoke-static {v3}, Lbnv;->a(Lbnv;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 324
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 325
    iget-object v3, p0, Lbnv$3;->a:Lbnv;

    invoke-virtual {v3, v2}, Lbnv;->e(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    goto :goto_0
.end method
