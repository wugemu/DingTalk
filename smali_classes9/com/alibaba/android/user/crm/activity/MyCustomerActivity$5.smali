.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;

.field final synthetic b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 514
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 515
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->a:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;

    .line 1487
    if-ltz p2, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    array-length v2, v2

    if-ge p2, v2, :cond_1

    .line 1488
    iget-object v1, v1, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aget-object v1, v1, p2

    .line 515
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v0

    .line 516
    .local v0, "type":I
    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f()V

    .line 519
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->supportInvalidateOptionsMenu()V

    .line 537
    :cond_0
    :goto_1
    return-void

    .line 1490
    .end local v0    # "type":I
    :cond_1
    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 521
    .restart local v0    # "type":I
    :cond_2
    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 522
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    .line 2334
    sget-object v2, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 2335
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    .line 2336
    iget-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    if-eqz v2, :cond_3

    .line 2337
    iget-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    sget v3, Lezg$l;->dt_user_crm_subordinate_customer:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lfmb;->a(Ljava/lang/String;)V

    .line 524
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    .line 526
    :cond_4
    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 527
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    .line 2342
    sget-object v2, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    iput-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->d:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 2343
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Z)V

    .line 2344
    iget-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    if-eqz v2, :cond_5

    .line 2345
    iget-object v2, v1, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->b:Lfmb;

    sget v3, Lezg$l;->dt_user_crm_all_customer:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lfmb;->a(Ljava/lang/String;)V

    .line 529
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    .line 531
    :cond_6
    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->g(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g()V

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$5;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_1
.end method
