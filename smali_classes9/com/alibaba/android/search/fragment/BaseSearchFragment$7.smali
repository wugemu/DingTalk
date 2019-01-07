.class final Lcom/alibaba/android/search/fragment/BaseSearchFragment$7;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/BaseSearchFragment;->a(Landroid/view/View;)V
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
    .line 418
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/fragment/BaseSearchFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/search/fragment/BaseSearchFragment;->c(Landroid/view/View;)V

    .line 423
    return-void
.end method
