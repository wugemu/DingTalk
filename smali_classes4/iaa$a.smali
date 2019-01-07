.class final Liaa$a;
.super Ljava/lang/Object;
.source "ThreadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liaa;

.field private b:Liaa$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liaa",
            "<TV;TT;>.b;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liaa;Liaa$b;)V
    .locals 0
    .param p1, "this$0"    # Liaa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liaa",
            "<TV;TT;>.b;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Liaa$a;, "Liaa<TV;TT;>.a;"
    .local p2, "result":Liaa$b;, "Liaa<TV;TT;>.b;"
    iput-object p1, p0, Liaa$a;->a:Liaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p2, p0, Liaa$a;->b:Liaa$b;

    .line 154
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 158
    .local p0, "this":Liaa$a;, "Liaa<TV;TT;>.a;"
    iget-object v0, p0, Liaa$a;->b:Liaa$b;

    iget-boolean v0, v0, Liaa$b;->a:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Liaa$a;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Liaa$a;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    iget-object v1, p0, Liaa$a;->b:Liaa$b;

    iget-object v1, v1, Liaa$b;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Liaa$a;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Liaa$a;->a:Liaa;

    invoke-static {v0}, Liaa;->access$500(Liaa;)Lcom/alibaba/wukong/Callback;

    move-result-object v0

    iget-object v1, p0, Liaa$a;->b:Liaa$b;

    iget-object v1, v1, Liaa$b;->b:Ljava/lang/String;

    iget-object v2, p0, Liaa$a;->b:Liaa$b;

    iget-object v2, v2, Liaa$b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
