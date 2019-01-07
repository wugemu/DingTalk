.class final Lfnr$2;
.super Ljava/lang/Object;
.source "OrgExternalNameCenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnr;


# direct methods
.method constructor <init>(Lfnr;)V
    .locals 0
    .param p1, "this$0"    # Lfnr;

    .prologue
    .line 53
    iput-object p1, p0, Lfnr$2;->a:Lfnr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "contact_exter_addpage_company_suggest_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lfnr$2;->a:Lfnr;

    .line 1028
    iget-object v1, v1, Lfnr;->c:Lfnr$a;

    .line 57
    invoke-virtual {v1, p3}, Lfnr$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "realName":Ljava/lang/String;
    iget-object v1, p0, Lfnr$2;->a:Lfnr;

    .line 2028
    iget-object v1, v1, Lfnr;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 58
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lfnr$2;->a:Lfnr;

    .line 3028
    iget-object v1, v1, Lfnr;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setSelection(I)V

    .line 62
    :cond_0
    return-void
.end method
