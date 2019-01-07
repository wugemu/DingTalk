.class final Lftt$2;
.super Ljava/lang/Object;
.source "NameCardOrgsSuggestItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lftt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfsv;

.field final synthetic b:Lftt;


# direct methods
.method constructor <init>(Lftt;Lfsv;)V
    .locals 0
    .param p1, "this$0"    # Lftt;

    .prologue
    .line 68
    iput-object p1, p0, Lftt$2;->b:Lftt;

    iput-object p2, p0, Lftt$2;->a:Lfsv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lftt$2;->a:Lfsv;

    iget-object v0, v0, Lfsv;->e:Lftb$d;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lftt$2;->a:Lfsv;

    iget-object v0, v0, Lfsv;->e:Lftb$d;

    invoke-interface {v0}, Lftb$d;->a()V

    .line 74
    :cond_0
    return-void
.end method
