.class public final Leju$4;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

.field final synthetic c:Landroid/widget/BaseAdapter;

.field final synthetic d:Leju;


# direct methods
.method public constructor <init>(Leju;Landroid/app/Activity;Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Leju;

    .prologue
    .line 161
    iput-object p1, p0, Leju$4;->d:Leju;

    iput-object p2, p0, Leju$4;->a:Landroid/app/Activity;

    iput-object p3, p0, Leju$4;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    iput-object p4, p0, Leju$4;->c:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Leju$4;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Leju$4;->d:Leju;

    invoke-static {v1}, Leju;->b(Leju;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Leju$4;->d:Leju;

    invoke-static {v1}, Leju;->b(Leju;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 169
    :cond_0
    iget-object v1, p0, Leju$4;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    if-nez v1, :cond_2

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v1, p0, Leju$4;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgts;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Leju$4;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgts;

    .line 175
    .local v0, "orgMicroAPPObjectWrapper":Lgts;
    invoke-virtual {v0}, Lgts;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Leju$4;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    invoke-interface {v1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;->a(Lgts;)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Leju$4;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;

    .line 1088
    iget-object v2, v0, Lgts;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 178
    invoke-interface {v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;->a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V

    goto :goto_0
.end method
