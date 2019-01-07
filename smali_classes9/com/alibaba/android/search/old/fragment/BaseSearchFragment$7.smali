.class final Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->d()V
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
    .line 368
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->I:Landroid/view/View;

    sget v1, Lemt$e;->divider_common_contact_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment$7;->a:Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/BaseSearchFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    return-void
.end method
