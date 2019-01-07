.class final Leuk$1;
.super Ljava/lang/Object;
.source "ApmtConfRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leuk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

.field final synthetic b:Leuk;


# direct methods
.method constructor <init>(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Leuk;

    .prologue
    .line 181
    iput-object p1, p0, Leuk$1;->b:Leuk;

    iput-object p2, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_2

    .line 186
    :cond_0
    iget-object v0, p0, Leuk$1;->b:Leuk;

    iget-object v1, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-static {v0, v1}, Leuk;->a(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    .line 190
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v0, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Leuk$1;->b:Leuk;

    iget-object v1, p0, Leuk$1;->a:Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    invoke-static {v0, v1}, Leuk;->b(Leuk;Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V

    goto :goto_0
.end method
