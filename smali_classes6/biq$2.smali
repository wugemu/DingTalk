.class public final Lbiq$2;
.super Ljava/lang/Object;
.source "RecentDingHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfx;

.field final synthetic b:Lbiq;


# direct methods
.method public constructor <init>(Lbiq;Lbfx;)V
    .locals 0
    .param p1, "this$0"    # Lbiq;

    .prologue
    .line 97
    iput-object p1, p0, Lbiq$2;->b:Lbiq;

    iput-object p2, p0, Lbiq$2;->a:Lbfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lbiq$2;->a:Lbfx;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lbiq$2;->b:Lbiq;

    .line 1021
    iget-object v0, v0, Lbiq;->h:Layl$a;

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lbiq$2;->b:Lbiq;

    .line 2021
    iget-object v0, v0, Lbiq;->h:Layl$a;

    .line 104
    iget-object v1, p0, Lbiq$2;->a:Lbfx;

    iget-object v1, v1, Lbfx;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Layl$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method
