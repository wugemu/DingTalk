.class final Lfzo$3;
.super Landroid/os/Handler;
.source "CSpaceCreatorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfzo;


# direct methods
.method constructor <init>(Lfzo;)V
    .locals 0
    .param p1, "this$0"    # Lfzo;

    .prologue
    .line 183
    iput-object p1, p0, Lfzo$3;->a:Lfzo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x65

    if-ne v4, v5, :cond_0

    .line 188
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, "userKey":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 1023
    iget-object v4, v4, Lfzo;->c:Ljava/util/HashMap;

    .line 189
    if-eqz v4, :cond_0

    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 2023
    iget-object v4, v4, Lfzo;->c:Ljava/util/HashMap;

    .line 189
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    .end local v3    # "userKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v3    # "userKey":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 3023
    iget-object v4, v4, Lfzo;->c:Ljava/util/HashMap;

    .line 192
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfzo$a;

    .line 193
    .local v1, "listener":Lfzo$a;
    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, "splitterPos":I
    if-lez v2, :cond_2

    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 4023
    iget-object v4, v4, Lfzo;->b:Ljava/util/HashMap;

    .line 197
    if-eqz v4, :cond_2

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "creatorEmail":Ljava/lang/String;
    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 5023
    iget-object v4, v4, Lfzo;->b:Ljava/util/HashMap;

    .line 199
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Lfzo$a;->a(Ljava/lang/String;)V

    .line 202
    .end local v0    # "creatorEmail":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lfzo$3;->a:Lfzo;

    .line 6023
    iget-object v4, v4, Lfzo;->c:Ljava/util/HashMap;

    .line 202
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
