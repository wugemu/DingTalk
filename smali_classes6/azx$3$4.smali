.class final Lazx$3$4;
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
    .line 456
    iput-object p1, p0, Lazx$3$4;->b:Lazx$3;

    iput-object p2, p0, Lazx$3$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

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
    .line 459
    iget-object v0, p0, Lazx$3$4;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lazy$b;->b(Z)V

    .line 460
    iget-object v0, p0, Lazx$3$4;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v0, v0, Lazx;->y:Lazy$b;

    sget v1, Laxp$i;->ding_sending:I

    invoke-interface {v0, v1}, Lazy$b;->a(I)V

    .line 461
    iget-object v0, p0, Lazx$3$4;->b:Lazx$3;

    iget-object v0, v0, Lazx$3;->c:Lazx;

    iget-object v1, p0, Lazx$3$4;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, p0, Lazx$3$4;->b:Lazx$3;

    iget-wide v2, v2, Lazx$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lazx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;J)V

    .line 462
    return-void
.end method
