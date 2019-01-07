.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "condition":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 313
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Ljava/util/List;)V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->text_color_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$g;->icon_filter_checked:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->text_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$4;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->i(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$g;->icon_filter_normal:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
