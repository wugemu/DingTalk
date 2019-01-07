.class final Lbad$6;
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
    .line 913
    iput-object p1, p0, Lbad$6;->a:Lbad;

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
    .line 916
    iget-object v0, p0, Lbad$6;->a:Lbad;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbad;->a(Lbad;Z)V

    .line 917
    return-void
.end method
