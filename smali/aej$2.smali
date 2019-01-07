.class final Laej$2;
.super Lcmi;
.source "ReplyExpressionDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0
    .param p1, "this$0"    # Laej;

    .prologue
    .line 181
    iput-object p1, p0, Laej$2;->a:Laej;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 191
    const-string/jumbo v1, "saveQuickReply"

    .line 192
    invoke-static {v1, p1, p2, p3}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "errMsg":Ljava/lang/String;
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "ReplyExpressionDataSource"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Laej$2;->a:Laej;

    invoke-static {v1}, Laej;->e(Laej;)Laee;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Laej$2;->a:Laej;

    invoke-static {v1}, Laej;->e(Laej;)Laee;

    .line 199
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Laej$2;->a:Laej;

    invoke-static {v0, p1}, Laej;->a(Laej;Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Laej$2;->a:Laej;

    invoke-static {v0}, Laej;->c(Laej;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laej$2;->a:Laej;

    invoke-static {v1}, Laej;->d(Laej;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
