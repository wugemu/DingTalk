.class final Ldns$3;
.super Ljava/lang/Object;
.source "CoreLayoutNodeRenderer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldns;->a(Llcy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llcy;

.field final synthetic b:Ldns;


# direct methods
.method constructor <init>(Ldns;Llcy;)V
    .locals 0
    .param p1, "this$0"    # Ldns;

    .prologue
    .line 465
    iput-object p1, p0, Ldns$3;->b:Ldns;

    iput-object p2, p0, Ldns$3;->a:Llcy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    iget-object v0, p0, Ldns$3;->b:Ldns;

    .line 1072
    iget-object v0, v0, Ldns;->a:Ldnu;

    .line 468
    invoke-interface {v0}, Ldnu;->i()Ldnu$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Ldns$3;->b:Ldns;

    .line 2072
    iget-object v0, v0, Ldns;->a:Ldnu;

    .line 469
    invoke-interface {v0}, Ldnu;->i()Ldnu$a;

    move-result-object v0

    iget-object v1, p0, Ldns$3;->b:Ldns;

    .line 3072
    iget-object v1, v1, Ldns;->a:Ldnu;

    .line 469
    invoke-interface {v1}, Ldnu;->g()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    iget-object v1, p0, Ldns$3;->b:Ldns;

    .line 4072
    iget-object v3, v1, Ldns;->b:Ljava/util/List;

    .line 469
    iget-object v1, p0, Ldns$3;->a:Llcy;

    .line 5022
    iget-object v4, v1, Llcy;->a:Ljava/lang/String;

    .line 469
    iget-object v1, p0, Ldns$3;->b:Ldns;

    .line 5072
    iget-object v1, v1, Ldns;->a:Ldnu;

    .line 469
    invoke-interface {v1}, Ldnu;->f()Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ldnu$a;->a(Landroid/view/View;Lcom/alibaba/wukong/im/Message;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 471
    :cond_0
    return-void
.end method
