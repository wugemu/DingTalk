.class final Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$1;
.super Ljava/lang/Object;
.source "DingSelectGroupTaskBoardActivity.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/select/SingleSelectAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/Serializable;)V
    .locals 1
    .param p1, "curSelected"    # Ljava/io/Serializable;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity$1;->a:Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;->a(Lcom/alibaba/android/ding/activity/DingSelectGroupTaskBoardActivity;)Lbaw$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lbaw$a;->a(Ljava/io/Serializable;)V

    .line 74
    return-void
.end method
