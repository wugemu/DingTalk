.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$1;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$16$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1060
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1061
    return-void
.end method
