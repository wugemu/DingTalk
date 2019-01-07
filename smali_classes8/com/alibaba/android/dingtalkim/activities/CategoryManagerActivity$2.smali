.class final Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;
.super Ljava/lang/Object;
.source "CategoryManagerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

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
    .line 147
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/category/CategoryObject;

    move-object v0, v1

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 152
    .local v0, "categoryObject":Lcom/alibaba/wukong/im/category/CategoryObject;
    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v2, v3}, Liap;->a(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;J)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1, v0}, Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    goto :goto_0

    .line 158
    :cond_3
    const-wide/16 v2, 0x6

    iget-wide v4, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_not_disturb_only_at"

    .line 1083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .line 1156
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/category_no_disturb_setting.html"

    .line 1157
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method
