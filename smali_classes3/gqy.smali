.class public final Lgqy;
.super Ljava/lang/Object;
.source "HybridEditSupportModel.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "supportType"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lgqy;->a:I

    .line 22
    iput-object p2, p0, Lgqy;->b:Ljava/lang/String;

    .line 24
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_space_local_edit_write_enable"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgqy;->c:Z

    .line 25
    return-void
.end method
