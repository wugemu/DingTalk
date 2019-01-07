.class final Lewu$1;
.super Ljava/lang/Object;
.source "TeleFloatingVoipConfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewu;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lewu;


# direct methods
.method constructor <init>(Lewu;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lewu;

    .prologue
    .line 59
    iput-object p1, p0, Lewu$1;->b:Lewu;

    iput-object p2, p0, Lewu$1;->a:Landroid/content/Context;

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
    .line 62
    iget-object v1, p0, Lewu$1;->b:Lewu;

    invoke-static {v1}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lewu$1;->a:Landroid/content/Context;

    sget v2, Leuj$l;->dt_conference_video_running_tip:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lewu$1;->b:Lewu;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    iget-object v3, p0, Lewu$1;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lewu;->a(Lewu;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .line 66
    iget-object v1, p0, Lewu$1;->b:Lewu;

    invoke-static {v1}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->setConfType(I)V

    .line 67
    iget-object v1, p0, Lewu$1;->b:Lewu;

    invoke-static {v1}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lewu$1;->b:Lewu;

    invoke-static {v1}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a()V

    .line 70
    iget-object v1, p0, Lewu$1;->b:Lewu;

    invoke-static {v1}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a(Ljava/lang/Object;)V

    .line 72
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method
