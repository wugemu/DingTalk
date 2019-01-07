.class final Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;
.super Ljava/lang/Object;
.source "SearchOrgNameCenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/service/SearchOrgNameCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/service/SearchOrgNameCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 1031
    iget-object v2, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    .line 79
    invoke-virtual {v2, p3}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(I)Lccl;

    move-result-object v0

    .line 80
    .local v0, "item":Lccl;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, v0, Lccl;->b:Ljava/lang/String;

    invoke-static {v2}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "realName":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->b(Ljava/lang/String;)V

    .line 85
    if-eqz v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    .line 2031
    iget-object v2, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setSelection(I)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    iget-object v3, v0, Lccl;->b:Ljava/lang/String;

    .line 3031
    iput-object v3, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->e:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    iget-wide v4, v0, Lccl;->a:J

    .line 4031
    iput-wide v4, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 91
    iget-object v2, p0, Lcom/alibaba/android/user/service/SearchOrgNameCenter$2;->a:Lcom/alibaba/android/user/service/SearchOrgNameCenter;

    iget-object v3, v0, Lccl;->c:Ljava/lang/String;

    .line 5031
    iput-object v3, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->g:Ljava/lang/String;

    goto :goto_0
.end method
