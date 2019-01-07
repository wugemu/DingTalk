.class final Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$1;
.super Ljava/lang/Object;
.source "MsgUnreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MsgUnreadActivity;)V

    .line 99
    return-void
.end method
