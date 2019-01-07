.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$4;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->h(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V

    .line 486
    return-void
.end method
