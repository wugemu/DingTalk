.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 935
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->s(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;I)I

    .line 936
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->t(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V

    .line 937
    return-void
.end method
