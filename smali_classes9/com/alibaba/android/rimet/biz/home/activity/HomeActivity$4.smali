.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lelp$a;


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
    .line 940
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lejy;)V
    .locals 1
    .param p1, "newTask"    # Lejy;

    .prologue
    .line 943
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lejy;)Lejy;

    .line 944
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$4;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->g(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    .line 945
    return-void
.end method
