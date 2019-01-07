.class final Lgee$6;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltl;

.field final synthetic b:Lgeg;

.field final synthetic c:Lgee;


# direct methods
.method constructor <init>(Lgee;Ltl;Lgeg;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 707
    iput-object p1, p0, Lgee$6;->c:Lgee;

    iput-object p2, p0, Lgee$6;->a:Ltl;

    iput-object p3, p0, Lgee$6;->b:Lgeg;

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
    .line 707
    check-cast p1, Ljava/util/Map;

    .line 1710
    iget-object v0, p0, Lgee$6;->c:Lgee;

    iget-object v1, p0, Lgee$6;->a:Ltl;

    iget-object v2, p0, Lgee$6;->b:Lgeg;

    .line 2054
    invoke-virtual {v0, v1, p1, v2}, Lgee;->a(Ltl;Ljava/util/Map;Lgeg;)V

    .line 707
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 719
    iget-object v0, p0, Lgee$6;->c:Lgee;

    iget-object v1, p0, Lgee$6;->a:Ltl;

    const/4 v2, 0x0

    iget-object v3, p0, Lgee$6;->b:Lgeg;

    .line 1054
    invoke-virtual {v0, v1, v2, v3}, Lgee;->a(Ltl;Ljava/util/Map;Lgeg;)V

    .line 720
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 715
    return-void
.end method
