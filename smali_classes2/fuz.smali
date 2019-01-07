.class public final Lfuz;
.super Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.source "SearchOrgNameCenterForRegister.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "clearableAutoCompleteTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lfuz;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lfuz;->b:Lfwa$a;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget v0, p0, Lfuz;->a:I

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lfuz;->b:Lfwa$a;

    invoke-interface {v0, p1}, Lfwa$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    iget v0, p0, Lfuz;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lfuz;->b:Lfwa$a;

    invoke-interface {v0, p1}, Lfwa$a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
