.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$6;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;I)I

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$6;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;I)V

    .line 1178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1179
    return-void
.end method
