.class final Ldns$2;
.super Ljava/lang/Object;
.source "CoreLayoutNodeRenderer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldns;->b()V
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
    .line 232
    iput-object p1, p0, Ldns$2;->a:Ldns;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Ldns$2;->a:Ldns;

    .line 1072
    iget-object v0, v0, Ldns;->a:Ldnu;

    .line 235
    invoke-interface {v0}, Ldnu;->k()Ldnu$c;

    move-result-object v0

    iget-object v1, p0, Ldns$2;->a:Ldns;

    .line 2072
    iget-object v1, v1, Ldns;->a:Ldnu;

    .line 235
    invoke-interface {v1}, Ldnu;->d()J

    move-result-wide v2

    invoke-interface {v0, p2, v2, v3}, Ldnu$c;->a(Landroid/view/MotionEvent;J)Z

    move-result v0

    return v0
.end method
