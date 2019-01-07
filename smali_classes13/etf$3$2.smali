.class final Letf$3$2;
.super Ljava/lang/Object;
.source "ContactSearchViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Letf$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Letf$3;


# direct methods
.method constructor <init>(Letf$3;)V
    .locals 0
    .param p1, "this$1"    # Letf$3;

    .prologue
    .line 363
    iput-object p1, p0, Letf$3$2;->a:Letf$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 366
    const-string/jumbo v0, "search_call_demission_colleague_cancel"

    invoke-static {v0}, Letd;->a(Ljava/lang/String;)V

    .line 367
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 368
    return-void
.end method
