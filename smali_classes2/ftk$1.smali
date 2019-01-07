.class final Lftk$1;
.super Ljava/lang/Object;
.source "NameCardEditEntryViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsm;

.field final synthetic b:Lftk;


# direct methods
.method constructor <init>(Lftk;Lfsm;)V
    .locals 0
    .param p1, "this$0"    # Lftk;

    .prologue
    .line 51
    iput-object p1, p0, Lftk$1;->b:Lftk;

    iput-object p2, p0, Lftk$1;->a:Lfsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lftk$1;->a:Lfsm;

    iget-object v0, v0, Lfsm;->a:Lftb$b;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lftk$1;->a:Lfsm;

    iget-object v0, v0, Lfsm;->a:Lftb$b;

    invoke-interface {v0}, Lftb$b;->a()V

    .line 57
    :cond_0
    return-void
.end method
