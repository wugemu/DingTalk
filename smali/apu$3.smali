.class final Lapu$3;
.super Ljava/lang/Object;
.source "SystemEventDetailActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapu;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapu;


# direct methods
.method constructor <init>(Lapu;)V
    .locals 0
    .param p1, "this$0"    # Lapu;

    .prologue
    .line 159
    iput-object p1, p0, Lapu$3;->a:Lapu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lapu$3;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v0

    invoke-interface {v0}, Lapt$b;->d()V

    .line 170
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SystemEventDetail"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "[SystemEventDetail]deleteSystemEvent failed, code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ",reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 159
    .line 1162
    iget-object v0, p0, Lapu$3;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v0

    invoke-interface {v0}, Lapt$b;->d()V

    .line 1163
    iget-object v0, p0, Lapu$3;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v0

    invoke-interface {v0}, Lapt$b;->b()V

    .line 1164
    invoke-static {}, Lavh;->b()V

    .line 159
    return-void
.end method
