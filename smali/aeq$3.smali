.class final Laeq$3;
.super Ljava/lang/Object;
.source "Chat2MailHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laeq;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laeq;


# direct methods
.method constructor <init>(Laeq;)V
    .locals 0
    .param p1, "this$0"    # Laeq;

    .prologue
    .line 396
    iput-object p1, p0, Laeq$3;->a:Laeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 404
    iget-object v0, p0, Laeq$3;->a:Laeq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laeq;->a(Laeq;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 396
    check-cast p1, Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Laeq$3;->a:Laeq;

    invoke-static {v0, p1}, Laeq;->a(Laeq;Ljava/lang/String;)V

    .line 396
    return-void
.end method
