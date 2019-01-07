.class final Lelp$1;
.super Lcmi;
.source "OATodoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelp;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Leka;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelp;


# direct methods
.method constructor <init>(Lelp;)V
    .locals 0
    .param p1, "this$0"    # Lelp;

    .prologue
    .line 91
    iput-object p1, p0, Lelp$1;->a:Lelp;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    const-string/jumbo v0, "oa"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    check-cast p1, Leka;

    .line 1094
    if-eqz p1, :cond_0

    .line 1095
    const-string/jumbo v0, "pref_key_oa_sync_undo_object_once"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1097
    :cond_0
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, ""

    const-string/jumbo v2, "getLastestOAUndoObject, onLoadSuccess"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lelp$1;->a:Lelp;

    invoke-static {p1}, Lejy;->a(Leka;)Lejy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lelp;->b(Lejy;)V

    .line 91
    return-void
.end method
