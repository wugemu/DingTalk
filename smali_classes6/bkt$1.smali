.class public final Lbkt$1;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkt;


# direct methods
.method public constructor <init>(Lbkt;)V
    .locals 0
    .param p1, "this$0"    # Lbkt;

    .prologue
    .line 46
    iput-object p1, p0, Lbkt$1;->a:Lbkt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lbkt$1;->a:Lbkt;

    .line 1026
    iget-object v0, v0, Lbkt;->a:Lbkw;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lbkt$1;->a:Lbkt;

    .line 2026
    iget-object v0, v0, Lbkt;->a:Lbkw;

    .line 50
    invoke-interface {v0}, Lbkw;->a()V

    .line 52
    :cond_0
    return-void
.end method
