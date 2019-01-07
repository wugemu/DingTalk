.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$a$3;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$3;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 925
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 920
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$3;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lbac$a;->a(J)V

    .line 921
    return-void
.end method
