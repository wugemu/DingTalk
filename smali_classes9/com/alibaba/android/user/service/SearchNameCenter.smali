.class public abstract Lcom/alibaba/android/user/service/SearchNameCenter;
.super Lcom/alibaba/android/user/service/BaseSearchNameCenter;
.source "SearchNameCenter.java"

# interfaces
.implements Lfwa$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/service/BaseSearchNameCenter",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;",
        ">;",
        "Lfwa$b",
        "<",
        "Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;",
        ">;"
    }
.end annotation


# instance fields
.field q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "clearableAutoCompleteTextView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .param p2, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/service/BaseSearchNameCenter;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 1034
    new-instance v0, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->k:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    .line 1035
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    new-instance v1, Lcom/alibaba/android/user/service/SearchNameCenter$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchNameCenter$1;-><init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;->a(Lcom/alibaba/android/user/service/BaseSearchNameCenter$a;)V

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v1, Lcom/alibaba/android/user/service/SearchNameCenter$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchNameCenter$2;-><init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1067
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v1, Lcom/alibaba/android/user/service/SearchNameCenter$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/service/SearchNameCenter$3;-><init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->q:Ljava/lang/String;

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method
