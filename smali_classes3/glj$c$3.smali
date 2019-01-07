.class final Lglj$c$3;
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
    .line 683
    iput-object p1, p0, Lglj$c$3;->a:Lglj$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 686
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 687
    iget-object v0, p0, Lglj$c$3;->a:Lglj$c;

    .line 1564
    invoke-virtual {v0}, Lglj$c;->e()V

    .line 688
    return-void
.end method
