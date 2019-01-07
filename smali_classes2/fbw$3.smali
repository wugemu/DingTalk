.class final Lfbw$3;
.super Ljava/lang/Object;
.source "DisplayLatestPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbw;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfbw;


# direct methods
.method constructor <init>(Lfbw;)V
    .locals 0
    .param p1, "this$0"    # Lfbw;

    .prologue
    .line 95
    iput-object p1, p0, Lfbw$3;->a:Lfbw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    check-cast p1, Ljava/lang/Integer;

    .line 1098
    if-eqz p1, :cond_0

    .line 1102
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lfbw$3;->a:Lfbw;

    .line 3025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lfby;->a(I)V

    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lfbw$3;->a:Lfbw;

    .line 4025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 1105
    invoke-interface {v0}, Lfby;->b()V

    goto :goto_0
.end method
