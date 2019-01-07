.class final Lgah$2;
.super Ljava/lang/Object;
.source "CsSpaceLoader.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgah;
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
        "Lgit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgah$a;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Lgah$a;Lcma;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lgah$2;->a:Lgah$a;

    iput-object p2, p0, Lgah$2;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 179
    check-cast p1, Lgit;

    .line 1182
    if-nez p1, :cond_0

    .line 1183
    const-string/jumbo v0, "RESULT_NULL"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgah$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :goto_0
    return-void

    .line 1187
    :cond_0
    invoke-static {p1}, Lgoc;->b(Lgit;)Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    .line 1189
    iget-object v1, p0, Lgah$2;->a:Lgah$a;

    .line 2088
    iput-object v0, v1, Lgah$a;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 3021
    invoke-static {}, Lgak$a;->a()Lgak;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lgah$2;->a:Lgah$a;

    .line 3052
    iget-object v1, v1, Lgah$a;->a:Ljava/lang/String;

    .line 1190
    iget-object v2, p0, Lgah$2;->a:Lgah$a;

    invoke-virtual {v2}, Lgah$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgak;->a(Ljava/lang/String;Lcom/alibaba/dingtalk/cspace/model/CsSpace;)V

    .line 1192
    iget-object v0, p0, Lgah$2;->a:Lgah$a;

    iget-object v1, p0, Lgah$2;->b:Lcma;

    .line 4027
    invoke-static {v0, v1}, Lgah;->b(Lgah$a;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lgah$2;->b:Lcma;

    invoke-static {p1, p2, v0}, Lgah;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 202
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 197
    return-void
.end method
