.class final Ldjf$2;
.super Ljava/lang/Object;
.source "ConversationAvatarFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjf;


# direct methods
.method constructor <init>(Ldjf;)V
    .locals 0
    .param p1, "this$0"    # Ldjf;

    .prologue
    .line 130
    iput-object p1, p0, Ldjf$2;->a:Ldjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    iget-object v0, p0, Ldjf$2;->a:Ldjf;

    invoke-static {v0}, Ldjf;->a(Ldjf;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    invoke-static {}, Liaq;->a()Liaq;

    invoke-static {}, Liaq;->c()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v0

    new-instance v1, Ldjf$2$1;

    invoke-direct {v1, p0}, Ldjf$2$1;-><init>(Ldjf$2;)V

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;)V

    .line 141
    :cond_0
    return-void
.end method
