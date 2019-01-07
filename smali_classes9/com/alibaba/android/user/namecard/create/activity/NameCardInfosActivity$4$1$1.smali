.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;
.super Ljava/lang/Object;
.source "NameCardInfosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity$4;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;)Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 383
    return-void
.end method
