.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->G(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$25;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->m(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    .line 1268
    const-string/jumbo v0, "ding_detail_comment_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1207
    return-void
.end method
