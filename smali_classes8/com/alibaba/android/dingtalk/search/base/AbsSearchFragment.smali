.class public abstract Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "AbsSearchFragment.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field protected b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V
    .locals 0
    .param p1, "chooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 38
    return-void
.end method

.method public a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 0
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 32
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/IChooseControl;)V
    .locals 0
    .param p1, "chooseControl"    # Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->b:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 42
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
