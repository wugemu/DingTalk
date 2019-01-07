.class final Lfbw$1;
.super Ljava/lang/Object;
.source "DisplayLatestPresenter.java"

# interfaces
.implements Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbw;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lfbw;


# direct methods
.method constructor <init>(Lfbw;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfbw;

    .prologue
    .line 54
    iput-object p1, p0, Lfbw$1;->b:Lfbw;

    iput-object p2, p0, Lfbw$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lfbw$1;->b:Lfbw;

    iget-object v1, p0, Lfbw$1;->a:Landroid/app/Activity;

    .line 1025
    invoke-virtual {v0, v1}, Lfbw;->a(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lfbw$1;->b:Lfbw;

    .line 2025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 62
    invoke-interface {v0}, Lfby;->b()V

    .line 63
    iget-object v0, p0, Lfbw$1;->b:Lfbw;

    .line 3025
    iget-object v0, v0, Lfbw;->b:Lfby;

    .line 63
    invoke-interface {v0}, Lfby;->a()V

    .line 64
    return-void
.end method
