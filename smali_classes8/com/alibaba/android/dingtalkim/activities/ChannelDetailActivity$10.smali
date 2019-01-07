.class final Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$10;
.super Ljava/lang/Object;
.source "ChannelDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    if-nez p2, :cond_0

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity$10;->a:Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChannelDetailActivity;)V

    .line 264
    :cond_0
    return-void
.end method
