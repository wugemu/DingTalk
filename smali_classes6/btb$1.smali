.class final Lbtb$1;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtb;->a(Lbsy$b;)V
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
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbtb;


# direct methods
.method constructor <init>(Lbtb;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbtb;

    .prologue
    .line 156
    iput-object p1, p0, Lbtb$1;->b:Lbtb;

    iput-object p2, p0, Lbtb$1;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 156
    check-cast p1, Lbsa;

    .line 1159
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->s()V

    .line 1164
    if-nez p1, :cond_1

    .line 1165
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    sget v1, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v0, v1}, Lbtb;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1166
    iget-object v1, p0, Lbtb$1;->a:Lbsy$b;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lbtb$1;->a:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    iget-object v1, p0, Lbtb$1;->a:Lbsy$b;

    invoke-static {v0, p1, v1}, Lbtb;->a(Lbtb;Lbsa;Lbsy$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->s()V

    .line 1068
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 184
    invoke-static {v0, p1}, Lbta;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lbtb$1;->b:Lbtb;

    sget v1, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v0, v1}, Lbtb;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 188
    :cond_2
    iget-object v0, p0, Lbtb$1;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lbtb$1;->a:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 176
    return-void
.end method
