.class final Lglj$c$2;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lglj$c;


# direct methods
.method constructor <init>(Lglj$c;)V
    .locals 0
    .param p1, "this$0"    # Lglj$c;

    .prologue
    .line 676
    iput-object p1, p0, Lglj$c$2;->a:Lglj$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 679
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    iget-object v0, p0, Lglj$c$2;->a:Lglj$c;

    invoke-static {v0}, Lglj$c;->b(Lglj$c;)V

    .line 681
    return-void
.end method
