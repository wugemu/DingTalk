.class final Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;
.super Ljava/lang/Object;
.source "TeleVoipFailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity$10;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipFailActivity;->finish()V

    .line 248
    return-void
.end method
