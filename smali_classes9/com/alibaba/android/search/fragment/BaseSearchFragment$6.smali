.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$6;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$6;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$6;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->b(Landroid/view/View;)V

    .line 395
    return-void
.end method
