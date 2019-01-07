.class final Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$1;
.super Ljava/lang/Object;
.source "PicViewActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 617
    check-cast p1, Ljava/lang/String;

    .line 1620
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity$6;->g:Lcom/alibaba/android/rimet/biz/im/activities/PicViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 617
    return-void
.end method
