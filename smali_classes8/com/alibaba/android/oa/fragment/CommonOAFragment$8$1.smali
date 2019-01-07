.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$8$1;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8$1;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$8;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->k(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V

    .line 1194
    return-void
.end method
