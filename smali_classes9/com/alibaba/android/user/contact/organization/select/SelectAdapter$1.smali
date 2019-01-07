.class final Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;
.super Ljava/lang/Object;
.source "SelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

.field final synthetic c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;ILcom/alibaba/android/user/contact/organization/select/SelectModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    iput p2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->a:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->a(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->b(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->c(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Lfki;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->c(Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;)Lfki;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-interface {v0, v1}, Lfki;->a(Lcom/alibaba/android/user/contact/organization/select/SelectModel;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_1
    return-void
.end method
