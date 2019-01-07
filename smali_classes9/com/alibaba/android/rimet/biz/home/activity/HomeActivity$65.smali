.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;
.super Lckm$a;
.source "HomeActivity.java"


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
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
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
    .line 3854
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3854
    check-cast p1, Ljava/lang/Integer;

    .line 4857
    if-eqz p1, :cond_0

    .line 4858
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->c:I

    .line 4859
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$65;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->ag(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 3854
    :cond_0
    return-void
.end method
