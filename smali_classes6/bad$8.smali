.class final Lbad$8;
.super Ljava/lang/Object;
.source "CreateEventActivityPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbad;


# direct methods
.method constructor <init>(Lbad;)V
    .locals 0
    .param p1, "this$0"    # Lbad;

    .prologue
    .line 933
    iput-object p1, p0, Lbad$8;->a:Lbad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 936
    const-string/jumbo v0, "create_event_giveup_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lbad$8;->a:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbad$8;->a:Lbad;

    iget v1, v1, Lbad;->c:I

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 1472
    const-string/jumbo v0, "create_event_giveup_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lbad$8;->a:Lbad;

    iget-object v0, v0, Lbad;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 940
    return-void
.end method
