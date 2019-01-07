.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;
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
    .line 115
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 120
    .local v6, "rootView":Landroid/view/View;
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;)Lftg;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardShareActivity;

    .line 1115
    invoke-static {v6}, Lftg;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1117
    if-eqz v2, :cond_0

    .line 1121
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 1122
    const-string/jumbo v3, " "

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)I

    move-result v0

    .line 1123
    if-nez v0, :cond_1

    .line 1124
    sget v0, Lezg$l;->share_no_apps:I

    invoke-static {v0}, Lcms;->a(I)V

    .end local v6    # "rootView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1125
    .restart local v6    # "rootView":Landroid/view/View;
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 1126
    sget v0, Lezg$l;->share_not_support:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
