.class public final Lewj$1;
.super Ljava/lang/Object;
.source "TeleConfMenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/CharSequence;

.field final synthetic b:Lewj;


# direct methods
.method public constructor <init>(Lewj;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lewj;

    .prologue
    .line 96
    iput-object p1, p0, Lewj$1;->b:Lewj;

    iput-object p2, p0, Lewj$1;->a:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 99
    if-ltz p2, :cond_0

    iget-object v0, p0, Lewj$1;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 100
    iget-object v0, p0, Lewj$1;->b:Lewj;

    .line 1048
    iget-object v0, v0, Lewj;->c:Lewj$b;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lewj$1;->b:Lewj;

    .line 2048
    iget-object v0, v0, Lewj;->c:Lewj$b;

    .line 101
    iget-object v1, p0, Lewj$1;->a:[Ljava/lang/CharSequence;

    invoke-interface {v0, v1, p2}, Lewj$b;->a([Ljava/lang/CharSequence;I)V

    .line 104
    :cond_0
    return-void
.end method
