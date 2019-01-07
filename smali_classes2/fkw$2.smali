.class final Lfkw$2;
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
        "Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;",
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
    .line 103
    iput-object p1, p0, Lfkw$2;->a:Lfkw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    .line 1106
    iget-object v0, p0, Lfkw$2;->a:Lfkw;

    .line 2033
    iput-object p1, v0, Lfkw;->c:Lcom/alibaba/android/user/model/OrgTmpCodeInviteObject;

    .line 1107
    iget-object v0, p0, Lfkw$2;->a:Lfkw;

    .line 3033
    iget-object v0, v0, Lfkw;->b:Lfkv$b;

    .line 1107
    invoke-interface {v0}, Lfkv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lfkw$2;->a:Lfkw;

    invoke-static {v0}, Lfkw;->a(Lfkw;)V

    .line 103
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
    .line 119
    const-string/jumbo v0, "OrgMemberQrcodePresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 115
    return-void
.end method
