.class final Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;
.super Ljava/lang/Object;
.source "ExternalSearchActivity.java"

# interfaces
.implements Lcbz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 2
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->b(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;Z)Z

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-gtz p1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    sget v1, Lezg$h;->ll_external_org_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->e(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->a(Lcom/alibaba/android/user/external/list/ExternalSearchActivity;)Lcom/alibaba/android/user/external/list/ExternalListFragment;

    move-result-object v0

    .line 2083
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->g()V

    .line 2085
    if-lez p1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/user/external/list/ExternalListFragment;->m:Lfnq;

    invoke-virtual {v1}, Lfnq;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2086
    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i()V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalSearchActivity$5;->a:Lcom/alibaba/android/user/external/list/ExternalSearchActivity;

    sget v1, Lezg$h;->ll_external_org_container:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/external/list/ExternalSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
