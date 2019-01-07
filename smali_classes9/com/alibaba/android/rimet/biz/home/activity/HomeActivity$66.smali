.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 3864
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 3867
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "shouldShowDingTabRedDot"    # Z

    .prologue
    .line 3871
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-boolean p1, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b:Z

    .line 3872
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$66;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ag(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3873
    return-void
.end method
