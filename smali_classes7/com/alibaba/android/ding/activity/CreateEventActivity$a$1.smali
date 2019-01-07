.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$a$1;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->e()V
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
    .line 454
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$1;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a$1;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$a;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->finish()V

    .line 458
    return-void
.end method
