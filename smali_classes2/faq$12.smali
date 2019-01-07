.class final Lfaq$12;
.super Lcmi;
.source "LWPOAuthProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfaq;->a(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lcee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfaq;


# direct methods
.method constructor <init>(Lfaq;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfaq;

    .prologue
    .line 112
    iput-object p1, p0, Lfaq$12;->c:Lfaq;

    iput-object p2, p0, Lfaq$12;->a:Lcma;

    iput-object p3, p0, Lfaq$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lfaq$12;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lfaq$12;->c:Lfaq;

    const/4 v1, 0x1

    iget-object v2, p0, Lfaq$12;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lfaq;->a(Lfaq;ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    check-cast p1, Lcee;

    .line 1117
    if-nez p1, :cond_0

    .line 1118
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tokenLogin suc. result null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1119
    iget-object v0, p0, Lfaq$12;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p1, Lcee;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    iget-object v0, p0, Lfaq$12;->a:Lcma;

    const-string/jumbo v1, "11044"

    iget-object v2, p1, Lcee;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v0, p1, Lcee;->i:Lcgj;

    .line 1129
    if-nez v0, :cond_2

    .line 1130
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tokenLogin suc. UserProfileExtensionModel null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    iget-object v0, p0, Lfaq$12;->a:Lcma;

    const-string/jumbo v1, "12303"

    invoke-interface {v0, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1135
    :cond_2
    const-string/jumbo v0, "LwpOAuthProvider"

    const-string/jumbo v1, "dt tokenLogin suc"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    new-instance v0, Lfaq$a;

    iget-object v1, p0, Lfaq$12;->c:Lfaq;

    invoke-direct {v0, v1}, Lfaq$a;-><init>(Lfaq;)V

    .line 1137
    iget-object v1, p0, Lfaq$12;->b:Ljava/lang/String;

    iget-object v2, p0, Lfaq$12;->a:Lcma;

    invoke-virtual {v0, p1, v1, v2}, Lfaq$a;->a(Lcee;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
