.class final Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$2;
.super Ljava/lang/Object;
.source "TeleConfRetryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->finish()V

    .line 156
    return-void
.end method
