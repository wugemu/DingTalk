.class final Lazx$3$2;
.super Ljava/lang/Object;
.source "DingCreateActivityV2BasePresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazx$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

.field final synthetic b:Lazx$3;


# direct methods
.method constructor <init>(Lazx$3;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V
    .locals 0
    .param p1, "this$1"    # Lazx$3;

    .prologue
    .line 420
    iput-object p1, p0, Lazx$3$2;->b:Lazx$3;

    iput-object p2, p0, Lazx$3$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 423
    iget-object v0, p0, Lazx$3$2;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lazx$3$2;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    invoke-interface {v0}, Lazy$b;->r()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    iget-object v0, p0, Lazx$3$2;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 427
    iget-object v0, p0, Lazx$3$2;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    sget v1, Laxp$i;->ding_sending:I

    invoke-interface {v0, v1}, Lazy$b;->a(I)V

    .line 428
    iget-object v0, p0, Lazx$3$2;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v1, p0, Lazx$3$2;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, p0, Lazx$3$2;->b:Lazx$3;

    iget-wide v2, v2, Lazx$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lazx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V

    .line 429
    return-void
.end method
