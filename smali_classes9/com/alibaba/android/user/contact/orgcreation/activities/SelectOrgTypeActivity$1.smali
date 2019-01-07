.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;
.super Ljava/lang/Object;
.source "SelectOrgTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

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
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;Z)Z

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "rightSection":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 108
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lfld;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfld;->d(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Lflc;

    move-result-object v2

    invoke-virtual {v2, p3}, Lflc;->a(I)V

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity$1;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectOrgTypeActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 112
    return-void
.end method
