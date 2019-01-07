.class final Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$3;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$3;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->a(Landroid/view/View;)V

    .line 228
    return-void
.end method
