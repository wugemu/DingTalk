.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$48;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcmt$a;


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
    .line 2655
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$48;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Ljava/lang/String;
    .param p4, "newValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2658
    const-string/jumbo v0, "user_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "streamline_mode_quick_menu_enabled"

    .line 2659
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$48;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->d(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Z)Z

    .line 2662
    :cond_0
    return-void
.end method
