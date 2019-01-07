.class final Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;
.super Ljava/lang/Object;
.source "MyCustomerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

.field final synthetic b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 462
    iput-object p1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->b:Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-static {p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 464
    invoke-static {p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v0

    iget-boolean v0, v0, Lfmj;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v0

    iget-boolean v0, v0, Lfmj;->a:Z

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 476
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-static {p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v0

    iget-boolean v0, v0, Lfmj;->c:Z

    if-eqz v0, :cond_1

    .line 467
    new-array v0, v4, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->SUB:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {p1}, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;->h(Lcom/alibaba/android/user/crm/activity/MyCustomerActivity;)Lfmj;

    move-result-object v0

    iget-boolean v0, v0, Lfmj;->a:Z

    if-eqz v0, :cond_2

    .line 469
    new-array v0, v5, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->ALL:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->FREE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 471
    :cond_2
    new-array v0, v3, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0

    .line 474
    :cond_3
    new-array v0, v3, [Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    sget-object v1, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->MINE:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerActivity$a;->a:[Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    goto :goto_0
.end method
