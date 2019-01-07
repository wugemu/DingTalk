.class final Lcyd$4;
.super Ljava/lang/Object;
.source "UserCommonVideoViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lebl$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcyd;


# direct methods
.method constructor <init>(Lcyd;)V
    .locals 0
    .param p1, "this$0"    # Lcyd;

    .prologue
    .line 365
    iput-object p1, p0, Lcyd$4;->a:Lcyd;

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
    .line 365
    check-cast p1, Lebl$a;

    .line 1368
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcyd$4;->a:Lcyd;

    iget-object v0, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lebl$a;->a:J

    iget-object v2, p0, Lcyd$4;->a:Lcyd;

    iget-object v2, v2, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget v0, p1, Lebl$a;->b:I

    if-lez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcyd$4;->a:Lcyd;

    iget v1, p1, Lebl$a;->b:I

    invoke-static {v0, v1}, Lcyd;->b(Lcyd;I)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 384
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 379
    return-void
.end method
