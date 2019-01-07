.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;
.super Ljava/lang/Object;
.source "CreateLiveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 375
    if-nez p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;I)I

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 381
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 382
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;I)I

    goto :goto_0
.end method
