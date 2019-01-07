.class final Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$18;
.super Ljava/lang/Object;
.source "DingListFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$18;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2$18;->a:Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;->c(Lcom/alibaba/android/ding/v2/DingListFragmentImplV2;)V

    .line 1508
    const-string/jumbo v0, "ding_deleted_deleteall"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 398
    return-void
.end method
