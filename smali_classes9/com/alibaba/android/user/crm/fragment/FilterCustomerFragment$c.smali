.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;
.super Ljava/lang/Object;
.source "FilterCustomerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field final synthetic c:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "isChecked"    # Z

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->c:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->a:Ljava/lang/String;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$c;->b:Z

    .line 384
    return-void
.end method
