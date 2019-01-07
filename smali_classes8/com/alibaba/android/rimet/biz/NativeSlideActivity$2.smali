.class final Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;
.super Ljava/lang/Object;
.source "NativeSlideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/NativeSlideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->a(Lcom/alibaba/android/rimet/biz/NativeSlideActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/NativeSlideActivity$2;->a:Lcom/alibaba/android/rimet/biz/NativeSlideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/NativeSlideActivity;->finish()V

    .line 102
    return-void
.end method
