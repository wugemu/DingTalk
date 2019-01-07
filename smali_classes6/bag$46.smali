.class final Lbag$46;
.super Lckm$a;
.source "DingDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 261
    iput-object p1, p0, Lbag$46;->a:Lbag;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 261
    check-cast p1, Ljava/lang/Boolean;

    .line 1264
    iget-object v0, p0, Lbag$46;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lbag$46;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-static {p1}, Ligb;->a(Ljava/lang/Boolean;)Z

    invoke-interface {v0}, Lbaf$b;->l()V

    .line 261
    :cond_0
    return-void
.end method
