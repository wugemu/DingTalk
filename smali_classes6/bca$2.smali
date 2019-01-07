.class final Lbca$2;
.super Lcmi;
.source "CommentDataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbcg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbca;


# direct methods
.method constructor <init>(Lbca;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbca;

    .prologue
    .line 51
    iput-object p1, p0, Lbca$2;->b:Lbca;

    iput-object p2, p0, Lbca$2;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iget-object v0, p0, Lbca$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lbca$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string/jumbo v0, "getCommentsFromServer failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lbcg;

    .line 1054
    iget-object v0, p0, Lbca$2;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lbca$2;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method
