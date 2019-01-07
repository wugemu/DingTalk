.class final Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;
.super Ljava/lang/Object;
.source "MyCustomerSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    .line 1092
    iget-object v1, v1, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;Ljava/lang/String;)V

    .line 60
    return-void
.end method
