.class final Lbae$4;
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
    .line 602
    iput-object p1, p0, Lbae$4;->a:Lbae;

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
    .line 605
    iget-object v0, p0, Lbae$4;->a:Lbae;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbae;->a(Lbae;Z)V

    .line 606
    return-void
.end method
