.class final Lgah$3;
.super Ljava/lang/Object;
.source "CsSpaceLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgah;->b(Lgah$a;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/CsOrg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

.field final synthetic b:Lgah$a;

.field final synthetic c:Lcma;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/model/CsSpace;Lgah$a;Lcma;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lgah$3;->a:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    iput-object p2, p0, Lgah$3;->b:Lgah$a;

    iput-object p3, p0, Lgah$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 222
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 1225
    if-nez p1, :cond_0

    .line 1226
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgah$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :goto_0
    return-void

    .line 1229
    :cond_0
    iget-object v0, p0, Lgah$3;->a:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    invoke-virtual {v0, p1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->setOrg(Lcom/alibaba/dingtalk/cspace/model/CsOrg;)V

    .line 1231
    iget-object v0, p0, Lgah$3;->b:Lgah$a;

    iget-object v1, p0, Lgah$3;->c:Lcma;

    .line 2027
    invoke-static {v0, v1}, Lgah;->c(Lgah$a;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lgah$3;->c:Lcma;

    invoke-static {p1, p2, v0}, Lgah;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 241
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 236
    return-void
.end method
