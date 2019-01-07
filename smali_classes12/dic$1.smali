.class final Ldic$1;
.super Ljava/lang/Object;
.source "GifEmotionPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldic;->a()V
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
        "Ldtc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldic;


# direct methods
.method constructor <init>(Ldic;)V
    .locals 0
    .param p1, "this$0"    # Ldic;

    .prologue
    .line 79
    iput-object p1, p0, Ldic$1;->a:Ldic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    check-cast p1, Ldtc;

    .line 1082
    iget-object v0, p0, Ldic$1;->a:Ldic;

    .line 2037
    iput-object p1, v0, Ldic;->e:Ldtc;

    .line 1084
    iget-object v0, p0, Ldic$1;->a:Ldic;

    .line 3037
    iget-object v0, v0, Ldic;->b:Ldpy;

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Ldic$1;->a:Ldic;

    .line 4037
    iget-object v0, v0, Ldic;->b:Ldpy;

    .line 1085
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldpy;->a(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 97
    return-void
.end method
