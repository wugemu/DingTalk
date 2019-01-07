.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$2;
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
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    invoke-static {v0}, Lbxp;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 267
    return-void
.end method
