.class final Lbog$1;
.super Ljava/lang/Object;
.source "AnnexViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbog;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbog;


# direct methods
.method constructor <init>(Lbog;)V
    .locals 0
    .param p1, "this$0"    # Lbog;

    .prologue
    .line 61
    iput-object p1, p0, Lbog$1;->a:Lbog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 64
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v0, p0, Lbog$1;->a:Lbog;

    invoke-static {v0}, Lbog;->a(Lbog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "detail_click_journal"

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbog$1;->a:Lbog;

    invoke-static {v1}, Lbog;->b(Lbog;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->title:Ljava/lang/String;

    iget-object v2, p0, Lbog$1;->a:Lbog;

    invoke-static {v2}, Lbog;->b(Lbog;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbqs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 64
    :cond_0
    const-string/jumbo v0, "feed_click_journal"

    goto :goto_0
.end method
