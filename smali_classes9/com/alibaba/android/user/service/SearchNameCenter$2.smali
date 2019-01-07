.class final Lcom/alibaba/android/user/service/SearchNameCenter$2;
.super Ljava/lang/Object;
.source "SearchNameCenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchNameCenter;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 53
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v2, v2, Lcom/alibaba/android/user/service/SearchNameCenter;->m:Lcom/alibaba/android/user/service/BaseSearchNameCenter$AutoCompleteAdapter;

    check-cast v2, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;

    invoke-virtual {v2, p3}, Lcom/alibaba/android/user/service/SearchNameCenter$SearchAutoCompleteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;

    .line 54
    .local v0, "item":Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->name:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "realName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/service/SearchNameCenter;->b(Ljava/lang/String;)V

    .line 59
    if-eqz v1, :cond_1

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v2, v2, Lcom/alibaba/android/user/service/SearchNameCenter;->n:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setSelection(I)V

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->name:Ljava/lang/String;

    .line 1023
    iput-object v3, v2, Lcom/alibaba/android/user/service/SearchNameCenter;->q:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchNameCenter;

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/search/base/idl/object/SearchProfessionObject;->code:Ljava/lang/String;

    .line 2023
    iput-object v3, v2, Lcom/alibaba/android/user/service/SearchNameCenter;->r:Ljava/lang/String;

    goto :goto_0
.end method
