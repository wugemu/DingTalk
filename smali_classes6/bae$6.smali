.class final Lbae$6;
.super Ljava/lang/Object;
.source "EditEventActivityPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbae;


# direct methods
.method constructor <init>(Lbae;)V
    .locals 0
    .param p1, "this$0"    # Lbae;

    .prologue
    .line 636
    iput-object p1, p0, Lbae$6;->a:Lbae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1504
    const-string/jumbo v0, "edit_event_giveup_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lbae$6;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 641
    return-void
.end method
