.class final Lcpc$1;
.super Ljava/lang/Object;
.source "ListViewScrollUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcpc;->a(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcpc$1;->a:Landroid/widget/AbsListView;

    iput p2, p0, Lcpc$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    iget-object v0, p0, Lcpc$1;->a:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcpc$1;->a:Landroid/widget/AbsListView;

    .line 25
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcpc$1;->a:Landroid/widget/AbsListView;

    invoke-static {v0}, Lcpc;->a(Landroid/widget/AbsListView;)V

    .line 30
    iget-object v0, p0, Lcpc$1;->a:Landroid/widget/AbsListView;

    iget v1, p0, Lcpc$1;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method
