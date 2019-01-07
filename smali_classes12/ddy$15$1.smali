.class final Lddy$15$1;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddy$15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lddy$15;


# direct methods
.method constructor <init>(Lddy$15;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Lddy$15;

    .prologue
    .line 1204
    iput-object p1, p0, Lddy$15$1;->b:Lddy$15;

    iput-object p2, p0, Lddy$15$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1226
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1204
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1204
    check-cast p1, Ljava/lang/Integer;

    .line 2207
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 3066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2207
    invoke-interface {v0}, Lddx$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2208
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lddy$15$1;->b:Lddy$15;

    iget v1, v1, Lddy$15;->b:I

    iget-object v2, p0, Lddy$15$1;->b:Lddy$15;

    iget v2, v2, Lddy$15;->c:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_4

    .line 2209
    const-string/jumbo v0, "at"

    iget-object v1, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v1, v1, Lddy$15;->f:Lddy;

    .line 4066
    iget-object v1, v1, Lddy;->f:Ljava/lang/String;

    .line 2209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 5066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2210
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->notification_at_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lddy$15$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 2216
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    const-string/jumbo v0, "at_all"

    iget-object v1, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v1, v1, Lddy$15;->f:Lddy;

    .line 6066
    iget-object v1, v1, Lddy;->f:Ljava/lang/String;

    .line 2211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2212
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 7066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2212
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_conversation_at_all_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lddy$15$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 2213
    :cond_2
    const-string/jumbo v0, "special"

    iget-object v1, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v1, v1, Lddy$15;->f:Lddy;

    .line 8066
    iget-object v1, v1, Lddy;->f:Ljava/lang/String;

    .line 2213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2214
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 9066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2214
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->tip_special:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lddy$15$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 2215
    :cond_3
    const-string/jumbo v0, "announce"

    iget-object v1, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v1, v1, Lddy$15;->f:Lddy;

    .line 10066
    iget-object v1, v1, Lddy;->f:Ljava/lang/String;

    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 11066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2216
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->announce_group:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lddy$15$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 2219
    :cond_4
    iget-object v0, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v0, v0, Lddy$15;->f:Lddy;

    .line 12066
    iget-object v0, v0, Lddy;->d:Lddx$b;

    .line 2219
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->chat_unread_message_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lddy$15$1;->b:Lddy$15;

    iget v5, v5, Lddy$15;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lddy$15$1;->b:Lddy$15;

    iget-object v2, v2, Lddy$15;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1, v2}, Lddx$b;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto/16 :goto_0
.end method
