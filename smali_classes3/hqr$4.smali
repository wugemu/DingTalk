.class final Lhqr$4;
.super Lcmi;
.source "OAUploadServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhqr;->a(Lcma;)V
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

.field final synthetic b:Lhqr;


# direct methods
.method constructor <init>(Lhqr;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lhqr;

    .prologue
    .line 162
    iput-object p1, p0, Lhqr$4;->b:Lhqr;

    iput-object p2, p0, Lhqr$4;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    iget-object v0, p0, Lhqr$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lhqr$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 162
    .line 1165
    iget-object v0, p0, Lhqr$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lhqr$4;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method
