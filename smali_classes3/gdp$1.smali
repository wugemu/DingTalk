.class final Lgdp$1;
.super Ljava/lang/Object;
.source "SpaceCommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdp;->a()V
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
        "Lgqv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdp;


# direct methods
.method constructor <init>(Lgdp;)V
    .locals 0
    .param p1, "this$0"    # Lgdp;

    .prologue
    .line 129
    iput-object p1, p0, Lgdp$1;->a:Lgdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    check-cast p1, Lgqv;

    .line 3132
    iget-object v0, p0, Lgdp$1;->a:Lgdp;

    .line 4053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 3132
    invoke-interface {v0}, Lgdn$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3135
    iget-object v0, p0, Lgdp$1;->a:Lgdp;

    .line 5053
    invoke-virtual {v0}, Lgdp;->c()V

    .line 3136
    iget-object v3, p0, Lgdp$1;->a:Lgdp;

    .line 6311
    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v3, Lgdp;->b:Ljava/lang/String;

    .line 6312
    if-eqz p1, :cond_0

    iget-object v0, p1, Lgqv;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgqv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 6313
    :goto_1
    iget-boolean v4, v3, Lgdp;->e:Z

    if-eqz v4, :cond_7

    .line 6314
    iput-boolean v1, v3, Lgdp;->e:Z

    .line 6315
    if-eqz v0, :cond_5

    .line 6316
    iget-object v0, v3, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->a()V

    move-object v0, v3

    :goto_2
    move v2, v1

    move-object v3, v0

    .line 6335
    :cond_1
    iput-boolean v2, v3, Lgdp;->c:Z

    .line 6324
    :cond_2
    :goto_3
    return-void

    .line 6311
    :cond_3
    iget-object v0, p1, Lgqv;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 6312
    goto :goto_1

    .line 6320
    :cond_5
    iget-object v0, p1, Lgqv;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6322
    iget-object v0, v3, Lgdp;->a:Lgdn$b;

    iget-object v4, p1, Lgqv;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Lgdn$b;->a(Ljava/util/List;)V

    .line 6323
    iget-object v0, v3, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->e()V

    .line 6324
    iget-object v0, v3, Lgdp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_4
    iput-boolean v2, v3, Lgdp;->c:Z

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    .line 6327
    :cond_7
    if-eqz v0, :cond_8

    move-object v0, v3

    .line 6328
    goto :goto_2

    .line 6331
    :cond_8
    iget-object v0, p1, Lgqv;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6333
    iget-object v0, v3, Lgdp;->a:Lgdn$b;

    iget-object v4, p1, Lgqv;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Lgdn$b;->b(Ljava/util/List;)V

    .line 6334
    iget-object v0, v3, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->f()V

    .line 6335
    iget-object v0, v3, Lgdp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lgdp$1;->a:Lgdp;

    .line 1053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 146
    invoke-interface {v0}, Lgdn$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lgdp$1;->a:Lgdp;

    .line 2053
    invoke-virtual {v0}, Lgdp;->c()V

    .line 151
    iget-object v0, p0, Lgdp$1;->a:Lgdp;

    .line 3053
    iget-object v0, v0, Lgdp;->a:Lgdn$b;

    .line 151
    invoke-interface {v0, p1, p2}, Lgdn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    return-void
.end method
