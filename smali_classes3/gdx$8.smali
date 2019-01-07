.class final Lgdx$8;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdx;->a(Ljava/util/ArrayList;Z)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Z

.field final synthetic c:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 193
    iput-object p1, p0, Lgdx$8;->c:Lgdx;

    iput-object p2, p0, Lgdx$8;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lgdx$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 193
    check-cast p1, Ljava/lang/Boolean;

    .line 1196
    iget-object v0, p0, Lgdx$8;->c:Lgdx;

    iget-object v1, p0, Lgdx$8;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lgdx;->a(Lgdx;I)V

    .line 1197
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lgdx$8;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lgdx$8;->c:Lgdx;

    .line 2055
    iget-object v2, v2, Lgdx;->a:Lgdw;

    .line 1197
    invoke-virtual {v2}, Lgdw;->v()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lgdx$8;->c:Lgdx;

    .line 3055
    iget-object v3, v3, Lgdx;->a:Lgdw;

    .line 1197
    invoke-virtual {v3}, Lgdw;->z()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lgdx$8;->b:Z

    .line 1198
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgdx$8;->c:Lgdx;

    invoke-static {v5}, Lgdx;->a(Lgdx;)Lgoi;

    move-result-object v5

    .line 4022
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v6

    .line 1197
    invoke-virtual/range {v0 .. v6}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V

    .line 193
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 207
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 203
    return-void
.end method
