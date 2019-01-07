.class final Lbap$6;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbap;


# direct methods
.method constructor <init>(Lbap;I)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 217
    iput-object p1, p0, Lbap$6;->b:Lbap;

    iput p2, p0, Lbap$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lbap$6;->b:Lbap;

    .line 1032
    iget-object v0, v0, Lbap;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lbap$6;->b:Lbap;

    .line 2032
    iget-object v0, v0, Lbap;->b:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    .line 221
    iget v1, p0, Lbap$6;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;->a(I)V

    .line 223
    :cond_0
    return-void
.end method
