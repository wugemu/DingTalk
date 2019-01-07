.class final Lbxo$6;
.super Ljava/lang/Object;
.source "AnchorPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo;->c()V
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
        "Lbxh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 186
    iput-object p1, p0, Lbxo$6;->a:Lbxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getLinkMicFans failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 186
    check-cast p1, Lbxh;

    .line 1189
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbxh;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lbxo$6;->a:Lbxo;

    .line 2059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 1190
    iget-object v1, p1, Lbxh;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbxn$b;->a(Ljava/util/List;Z)V

    .line 186
    :cond_0
    return-void
.end method
