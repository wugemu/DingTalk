.class final Laej$3;
.super Ljava/lang/Object;
.source "ReplyExpressionDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laej;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laej;


# direct methods
.method constructor <init>(Laej;Z)V
    .locals 0
    .param p1, "this$0"    # Laej;

    .prologue
    .line 241
    iput-object p1, p0, Laej$3;->b:Laej;

    iput-boolean p2, p0, Laej$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Laej$3;->b:Laej;

    invoke-static {v1}, Laej;->f(Laej;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "jsonStr":Ljava/lang/String;
    iget-object v1, p0, Laej$3;->b:Laej;

    invoke-static {v1}, Laej;->g(Laej;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-boolean v1, p0, Laej$3;->a:Z

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Laej$3;->b:Laej;

    invoke-static {v1}, Laej;->c(Laej;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laej$3;->b:Laej;

    invoke-static {v2}, Laej;->d(Laej;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method
