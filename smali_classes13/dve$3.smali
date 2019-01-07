.class final Ldve$3;
.super Ljava/lang/Object;
.source "ForwardCombineDirectSelectHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldve;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldve;


# direct methods
.method constructor <init>(Ldve;)V
    .locals 0
    .param p1, "this$0"    # Ldve;

    .prologue
    .line 81
    iput-object p1, p0, Ldve$3;->a:Ldve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Ldve$3;->a:Ldve;

    iget-object v0, v0, Ldve;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    iget-object v0, p0, Ldve$3;->a:Ldve;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldve;->a(Z)V

    goto :goto_0
.end method
