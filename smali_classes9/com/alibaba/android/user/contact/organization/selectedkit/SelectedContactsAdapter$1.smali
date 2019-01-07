.class final Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;
.super Ljava/lang/Object;
.source "SelectedContactsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

.field final synthetic c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;ILcom/alibaba/android/user/contact/organization/select/SelectModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    iput p2, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a:I

    iput-object p3, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 169
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a:I

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->b(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->c(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->d(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Lfki;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->d(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Lfki;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->b:Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-interface {v0, v1}, Lfki;->a(Lcom/alibaba/android/user/contact/organization/select/SelectModel;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a()V

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
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->c:Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1$1;-><init>(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;->a(Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/selectedkit/SelectedContactsAdapter$1;->a()V

    goto :goto_0
.end method
