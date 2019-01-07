.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->d:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 333
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_videocall_button_video_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->d:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$12;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->d(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method
