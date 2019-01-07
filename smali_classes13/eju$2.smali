.class public final Leju$2;
.super Ljava/lang/Object;
.source "OAPopUpWindowHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

.field final synthetic b:Landroid/widget/BaseAdapter;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Leju;


# direct methods
.method public constructor <init>(Leju;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Landroid/widget/BaseAdapter;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Leju;

    .prologue
    .line 85
    iput-object p1, p0, Leju$2;->d:Leju;

    iput-object p2, p0, Leju$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    iput-object p3, p0, Leju$2;->b:Landroid/widget/BaseAdapter;

    iput-object p4, p0, Leju$2;->c:Landroid/app/Activity;

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
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    .line 89
    const v2, 0x7f1116dc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "temp":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .end local v1    # "temp":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Leju$2;->d:Leju;

    invoke-static {v2}, Leju;->a(Leju;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p0, Leju$2;->d:Leju;

    invoke-static {v2}, Leju;->a(Leju;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 99
    :cond_1
    iget-object v2, p0, Leju$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    if-nez v2, :cond_3

    .line 115
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    iget-object v2, p0, Leju$2;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgts;

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Leju$2;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgts;

    .line 105
    .local v0, "orgMicroAPPObjectWrapper":Lgts;
    iget-object v2, p0, Leju$2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lgts;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    invoke-virtual {v0}, Lgts;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 110
    iget-object v2, p0, Leju$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    invoke-interface {v2, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;->a(Lgts;)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object v2, p0, Leju$2;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    .line 1088
    iget-object v3, v0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 112
    invoke-interface {v2, v3}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    goto :goto_0
.end method
