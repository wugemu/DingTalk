.class public final Lfky;
.super Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.source "SearchOrgNameCenterForCreate.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "clearableAutoCompleteTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Lfky;->b:Lfwa$a;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lfky;->b:Lfwa$a;

    invoke-interface {v0, p1}, Lfwa$a;->d(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method
