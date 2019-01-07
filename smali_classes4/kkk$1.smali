.class final Lkkk$1;
.super Ljava/lang/Object;
.source "SecuritySignImpl.java"

# interfaces
.implements Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkkk;


# direct methods
.method constructor <init>(Lkkk;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lkkk$1;->a:Lkkk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUMIDInitFinishedEx(Ljava/lang/String;I)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 102
    const-string/jumbo v0, "umt"

    invoke-static {v0, p1}, Lkkn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string/jumbo v0, "mtopsdk.SecuritySignImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[initUmidToken]IUMIDComponent initUMID error,resultCode :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
