.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;
.super Ljava/lang/Object;
.source "NameCardShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 109
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 111
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Lftg;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$2;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .line 1091
    invoke-static {v0}, Lftg;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1092
    if-eqz v3, :cond_0

    .line 1095
    iget-object v4, v1, Lftg;->a:Lfta$a;

    invoke-interface {v4}, Lfta$a;->a()V

    .line 1096
    const-class v4, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lftg$3;

    invoke-direct {v5, v1, v3, v2}, Lftg$3;-><init>(Lftg;Landroid/graphics/Bitmap;Landroid/app/Activity;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 113
    .end local v0    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method
