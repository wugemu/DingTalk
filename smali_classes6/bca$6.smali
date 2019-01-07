.class final Lbca$6;
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
        "Ljava/lang/Void;",
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
    .line 135
    iput-object p1, p0, Lbca$6;->b:Lbca;

    iput-object p2, p0, Lbca$6;->a:Lcma;

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
    .line 145
    iget-object v0, p0, Lbca$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lbca$6;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string/jumbo v0, "removeDingComment failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    .line 1138
    iget-object v0, p0, Lbca$6;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lbca$6;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method
