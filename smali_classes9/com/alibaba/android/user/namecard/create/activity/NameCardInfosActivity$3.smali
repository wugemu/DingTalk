.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$3;
.super Ljava/lang/Object;
.source "NameCardInfosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$3;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    sget v0, Lezg$l;->dt_user_card_info_tips:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 314
    return-void
.end method
