.class final Lfkw$3;
.super Ljava/lang/Object;
.source "OrgMemberQrcodePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfkw;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfkw;


# direct methods
.method constructor <init>(Lfkw;)V
    .locals 0
    .param p1, "this$0"    # Lfkw;

    .prologue
    .line 128
    iput-object p1, p0, Lfkw$3;->a:Lfkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 128
    .line 2131
    iget-object v0, p0, Lfkw$3;->a:Lfkw;

    .line 3033
    iget-object v0, v0, Lfkw;->b:Lfkv$b;

    .line 2131
    invoke-interface {v0}, Lfkv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2134
    iget-object v0, p0, Lfkw$3;->a:Lfkw;

    invoke-static {v0}, Lfkw;->a(Lfkw;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 144
    const-string/jumbo v0, "OrgMemberQrcodePresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lfkw$3;->a:Lfkw;

    const/4 v1, 0x0

    .line 1033
    iput-object v1, v0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    .line 146
    iget-object v0, p0, Lfkw$3;->a:Lfkw;

    .line 2033
    iget-object v0, v0, Lfkw;->b:Lfkv$b;

    .line 146
    invoke-interface {v0}, Lfkv$b;->e()V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
