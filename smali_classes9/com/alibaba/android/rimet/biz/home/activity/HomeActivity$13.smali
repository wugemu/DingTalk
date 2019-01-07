.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1223
    check-cast p1, Lcry;

    .line 2227
    if-eqz p1, :cond_0

    .line 3051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 2227
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2228
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->k(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Z

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 2229
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$13;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->b(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 1223
    return-void

    .line 2227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
