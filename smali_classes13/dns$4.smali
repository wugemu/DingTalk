.class final Ldns$4;
.super Ljava/lang/Object;
.source "CoreLayoutNodeRenderer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldns;


# direct methods
.method constructor <init>(Ldns;)V
    .locals 0
    .param p1, "this$0"    # Ldns;

    .prologue
    .line 522
    iput-object p1, p0, Ldns$4;->a:Ldns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 526
    const/4 v0, 0x0

    return v0
.end method
