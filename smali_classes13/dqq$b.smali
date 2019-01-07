.class abstract Ldqq$b;
.super Ljava/lang/Object;
.source "ChatMsgListModel.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field f:Z

.field final synthetic g:Ldqq;


# direct methods
.method public constructor <init>(Ldqq;)V
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    iput-object p1, p0, Ldqq$b;->g:Ldqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iget-object v0, p1, Ldqq;->e:Ljava/util/List;

    .line 200
    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    iput-object v0, p1, Ldqq;->e:Ljava/util/List;

    .line 3040
    :cond_0
    iget-object v0, p1, Ldqq;->e:Ljava/util/List;

    .line 203
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    iget-object v0, p0, Ldqq$b;->g:Ldqq;

    .line 4040
    iget-object v0, v0, Ldqq;->e:Ljava/util/List;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Ldqq$b;->g:Ldqq;

    .line 5040
    iget-object v0, v0, Ldqq;->e:Ljava/util/List;

    .line 208
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public b()V
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    invoke-direct {p0}, Ldqq$b;->c()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldqq$b;->f:Z

    .line 215
    invoke-virtual {p0}, Ldqq$b;->a()V

    .line 216
    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 232
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    iget-boolean v0, p0, Ldqq$b;->f:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Ldqq$b;->c()V

    .line 234
    invoke-virtual {p0, p1, p2}, Ldqq$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Ldqq$b;, "Ldqq$b<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Ldqq$b;->f:Z

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Ldqq$b;->c()V

    .line 224
    invoke-virtual {p0, p1}, Ldqq$b;->a(Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method
