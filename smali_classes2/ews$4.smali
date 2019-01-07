.class final Lews$4;
.super Ljava/lang/Object;
.source "TeleFloatingConfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lews;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lews;


# direct methods
.method constructor <init>(Lews;)V
    .locals 0
    .param p1, "this$0"    # Lews;

    .prologue
    .line 291
    iput-object p1, p0, Lews$4;->a:Lews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 294
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 295
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lews$4;->a:Lews;

    invoke-static {v2}, Lews;->a(Lews;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lews$4;->a:Lews;

    new-instance v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lews;->a(Lews;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .line 298
    :cond_0
    iget-object v2, p0, Lews$4;->a:Lews;

    invoke-static {v2}, Lews;->a(Lews;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a()V

    .line 299
    const/4 v2, 0x0

    invoke-static {v2}, Lcms;->f(Landroid/content/Context;)Z

    move-result v1

    .line 300
    .local v1, "phoneRunning":Z
    if-eqz v1, :cond_1

    .line 301
    iget-object v2, p0, Lews$4;->a:Lews;

    invoke-static {v2, v1}, Lews;->a(Lews;Z)V

    .line 303
    :cond_1
    return-void
.end method
