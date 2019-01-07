.class final Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;
.super Ljava/lang/Object;
.source "TeleVideoPowerfulConfActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->a(Lcpi$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcpi$a;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Lcpi$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    .prologue
    .line 3182
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->a:Lcpi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3185
    if-nez p1, :cond_0

    .line 3186
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;Z)V

    .line 3201
    :goto_0
    return-void

    .line 3189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;->b:Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVideoPowerfulConfActivity$26;)V

    invoke-static {v0, v1}, Leyx;->b(Landroid/app/Activity;Lcpi$a;)V

    goto :goto_0
.end method
