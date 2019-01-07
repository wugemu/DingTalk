.class final Lfny$1;
.super Ljava/lang/Object;
.source "ExternalShareView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfny;


# direct methods
.method constructor <init>(Lfny;)V
    .locals 0
    .param p1, "this$0"    # Lfny;

    .prologue
    .line 48
    iput-object p1, p0, Lfny$1;->a:Lfny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lfny$1;->a:Lfny;

    invoke-virtual {v0}, Lfny;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfny$1;->a:Lfny;

    .line 1029
    iget-object v0, v0, Lfny;->a:Lfnv$a;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lfny$1;->a:Lfny;

    .line 2029
    iget-object v0, v0, Lfny;->a:Lfnv$a;

    .line 52
    invoke-interface {v0}, Lfnv$a;->a()V

    .line 54
    :cond_0
    return-void
.end method
