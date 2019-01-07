.class final Lguv$1;
.super Ljava/lang/Object;
.source "VideoPlayManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lguv;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lguv;


# direct methods
.method constructor <init>(Lguv;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lguv;

    .prologue
    .line 66
    iput-object p1, p0, Lguv$1;->b:Lguv;

    iput-object p2, p0, Lguv$1;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lguv$1;->b:Lguv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lguv;->a(Lguv;Z)V

    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    iget-object v0, p0, Lguv$1;->a:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lguv$1;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 74
    :cond_0
    return-void
.end method
