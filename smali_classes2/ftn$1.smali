.class final Lftn$1;
.super Ljava/lang/Object;
.source "NameCardInfosAvatarViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsp;

.field final synthetic b:Lftn;


# direct methods
.method constructor <init>(Lftn;Lfsp;)V
    .locals 0
    .param p1, "this$0"    # Lftn;

    .prologue
    .line 32
    iput-object p1, p0, Lftn$1;->b:Lftn;

    iput-object p2, p0, Lftn$1;->a:Lfsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v0, p0, Lftn$1;->a:Lfsp;

    iget-object v0, v0, Lfsp;->a:Lftb$b;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lftn$1;->a:Lfsp;

    iget-object v0, v0, Lfsp;->a:Lftb$b;

    invoke-interface {v0}, Lftb$b;->a()V

    .line 38
    :cond_0
    return-void
.end method
