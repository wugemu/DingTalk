.class final Lbwv$9;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwv;


# direct methods
.method constructor <init>(Lbwv;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 780
    iput-object p1, p0, Lbwv$9;->a:Lbwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 783
    iget-object v0, p0, Lbwv$9;->a:Lbwv;

    invoke-static {v0}, Lbwv;->b(Lbwv;)Lbwt$a;

    move-result-object v0

    invoke-interface {v0}, Lbwt$a;->b()V

    .line 784
    return-void
.end method
