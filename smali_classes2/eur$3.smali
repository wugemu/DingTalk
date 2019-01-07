.class final Leur$3;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field final synthetic b:Leur;


# direct methods
.method constructor <init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 686
    iput-object p1, p0, Leur$3;->b:Leur;

    iput-object p2, p0, Leur$3;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 689
    iget-object v0, p0, Leur$3;->b:Leur;

    invoke-static {v0}, Leur;->a(Leur;)Lexi$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "call_record_info_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Leur$3;->b:Leur;

    invoke-static {v0}, Leur;->a(Leur;)Lexi$c;

    move-result-object v0

    iget-object v1, p0, Leur$3;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-interface {v0, v1}, Lexi$c;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 693
    :cond_0
    return-void
.end method
