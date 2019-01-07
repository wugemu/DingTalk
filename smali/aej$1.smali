.class final Laej$1;
.super Lcmi;
.source "ReplyExpressionDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labu;",
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
    .line 80
    iput-object p1, p0, Laej$1;->a:Laej;

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
    .line 101
    const-string/jumbo v0, "CMail"

    const-string/jumbo v1, "ReplyExpressionDataSource"

    const-string/jumbo v2, "queryQuickReply"

    .line 102
    invoke-static {v2, p1, p2, p3}, Lrv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Laej$1;->a:Laej;

    invoke-static {v0}, Laej;->a(Laej;)V

    .line 107
    iget-object v0, p0, Laej$1;->a:Laej;

    invoke-static {v0}, Laej;->b(Laej;)V

    .line 108
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 80
    check-cast p1, Labu;

    .line 1083
    if-eqz p1, :cond_1

    .line 1084
    iget-object v0, p1, Labu;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Laej$1;->a:Laej;

    iget-object v1, p1, Labu;->a:Ljava/util/List;

    invoke-static {v0, v1}, Laej;->a(Laej;Ljava/util/List;)Ljava/util/List;

    .line 1088
    :cond_0
    iget-object v0, p1, Labu;->c:Ljava/lang/Boolean;

    .line 2022
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1088
    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Laej$1;->a:Laej;

    iget-object v1, p1, Labu;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Laej;->a(Laej;Ljava/lang/String;)Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Laej$1;->a:Laej;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laej;->a(Laej;Z)V

    .line 1094
    :cond_1
    iget-object v0, p0, Laej$1;->a:Laej;

    invoke-static {v0}, Laej;->a(Laej;)V

    .line 1096
    iget-object v0, p0, Laej$1;->a:Laej;

    invoke-static {v0}, Laej;->b(Laej;)V

    .line 80
    return-void
.end method
