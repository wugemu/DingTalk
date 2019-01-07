.class final Lgan$1;
.super Ljava/lang/Object;
.source "FavConversationHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgan;->a(Ljava/lang/String;ILgan$a;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lgan;


# direct methods
.method constructor <init>(Lgan;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lgan;

    .prologue
    .line 76
    iput-object p1, p0, Lgan$1;->c:Lgan;

    iput-object p2, p0, Lgan$1;->a:Ljava/lang/String;

    iput p3, p0, Lgan$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    .line 1092
    iget-object v0, p0, Lgan$1;->c:Lgan;

    iget-object v1, p0, Lgan$1;->a:Ljava/lang/String;

    iget v2, p0, Lgan$1;->b:I

    invoke-static {v0, v1, v2}, Lgan;->a(Lgan;Ljava/lang/String;I)V

    .line 76
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2079
    if-eqz p1, :cond_0

    .line 2080
    iget-object v0, p0, Lgan$1;->c:Lgan;

    invoke-static {v0}, Lgan;->a(Lgan;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lgan$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    :cond_0
    iget-object v0, p0, Lgan$1;->c:Lgan;

    iget-object v1, p0, Lgan$1;->a:Ljava/lang/String;

    iget v2, p0, Lgan$1;->b:I

    invoke-static {v0, v1, v2}, Lgan;->a(Lgan;Ljava/lang/String;I)V

    .line 76
    return-void
.end method
