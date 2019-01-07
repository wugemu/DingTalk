.class final Lddq$1;
.super Ljava/lang/Object;
.source "ChatUtil.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddq;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcts$c;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcts$c;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lddq$1;->a:Lcts$c;

    iput-object p2, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lddq$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 331
    .line 1334
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    iget-object v1, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcts$c;->a(Ljava/lang/String;Z)V

    .line 331
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 346
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "sendLike"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sendLike fail s:"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, " s1:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lddq$1;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string/jumbo v0, "14020011"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lddq$1;->c:Landroid/app/Activity;

    sget v1, Lctk$i;->dt_im_comment_liked:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    iget-object v1, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcts$c;->a(Ljava/lang/String;Z)V

    .line 353
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    iget-object v1, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6, v5}, Lcts$c;->a(Ljava/lang/String;ZZ)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v5, v5}, Lddq;->a(Lcom/alibaba/wukong/im/Message;ZZ)V

    .line 358
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lddq$1;->a:Lcts$c;

    iget-object v1, p0, Lddq$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcts$c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 342
    return-void
.end method
