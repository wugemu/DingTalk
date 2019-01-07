.class final Lddy$8;
.super Ljava/lang/Object;
.source "ChatLoadPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddy;->a(JJZ)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lddy;


# direct methods
.method constructor <init>(Lddy;I)V
    .locals 0
    .param p1, "this$0"    # Lddy;

    .prologue
    .line 933
    iput-object p1, p0, Lddy$8;->b:Lddy;

    iput p2, p0, Lddy$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 941
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 933
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    .line 933
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1936
    iget-object v1, p0, Lddy$8;->b:Lddy;

    iget v0, p0, Lddy$8;->a:I

    .line 2976
    iget-object v4, v1, Lddy;->d:Lddx$b;

    invoke-interface {v4}, Lddx$b;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lddy;->c:Ldqq;

    if-eqz v4, :cond_0

    .line 2977
    if-eqz p1, :cond_1

    .line 2978
    iget-object v2, v1, Lddy;->c:Ldqq;

    new-instance v3, Lddy$10;

    invoke-direct {v3, v1, v0, p1}, Lddy$10;-><init>(Lddy;ILcom/alibaba/wukong/im/Message;)V

    const-string/jumbo v0, "jump"

    invoke-virtual {v2, p1, v3, v6, v0}, Ldqq;->a(Lcom/alibaba/wukong/im/Message;Ldqq$d;ZLjava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-wide v4, v2

    .line 3015
    invoke-virtual/range {v1 .. v6}, Lddy;->a(JJZ)V

    goto :goto_0
.end method
