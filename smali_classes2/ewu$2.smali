.class final Lewu$2;
.super Ljava/lang/Object;
.source "TeleFloatingVoipConfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewu;->c()V
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
    .line 82
    iput-object p1, p0, Lewu$2;->b:Lewu;

    iput-object p2, p0, Lewu$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lewu$2;->b:Lewu;

    invoke-static {v0}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lewu$2;->b:Lewu;

    invoke-static {v0}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lewu$2;->b:Lewu;

    invoke-static {v0}, Lewu;->a(Lewu;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b()V

    .line 89
    iget-object v0, p0, Lewu$2;->b:Lewu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lewu;->a(Lewu;Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;)Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    .line 91
    :cond_0
    return-void
.end method
