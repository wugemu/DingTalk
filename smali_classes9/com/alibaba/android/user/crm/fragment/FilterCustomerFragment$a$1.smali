.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;
.super Ljava/lang/Object;
.source "FilterCustomerFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

.field final synthetic b:Lcom/alibaba/android/user/widget/LabelButton;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;Lcom/alibaba/android/user/widget/LabelButton;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    iput-object p3, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->b:Lcom/alibaba/android/user/widget/LabelButton;

    iput p4, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 358
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    iput-boolean p2, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    .line 359
    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->b:Lcom/alibaba/android/user/widget/LabelButton;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget v1, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->b:I

    :goto_0
    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/widget/LabelButton;->setTextColor(I)V

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget-boolean v1, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->d:Z

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget v1, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->e:I

    iget v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->c:I

    if-eq v1, v2, :cond_1

    .line 363
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget v2, v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->e:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;

    .line 364
    .local v0, "last":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    if-eqz v0, :cond_0

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->c:I

    iput v2, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->e:I

    .line 368
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->notifyDataSetChanged()V

    .line 370
    .end local v0    # "last":Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
    :cond_1
    return-void

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a$1;->d:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;

    iget v1, v1, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$a;->a:I

    goto :goto_0
.end method
