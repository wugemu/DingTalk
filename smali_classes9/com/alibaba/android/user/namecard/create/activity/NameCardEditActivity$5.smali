.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$5;
.super Ljava/lang/Object;
.source "NameCardEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$5;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity$5;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;->c(Lcom/alibaba/android/user/namecard/create/activity/NameCardEditActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;->notifyDataSetChanged()V

    .line 275
    return-void
.end method
