.class final Lbar$5;
.super Ljava/lang/Object;
.source "DingUnReadPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbar;


# direct methods
.method constructor <init>(Lbar;I)V
    .locals 0
    .param p1, "this$0"    # Lbar;

    .prologue
    .line 206
    iput-object p1, p0, Lbar$5;->b:Lbar;

    iput p2, p0, Lbar$5;->a:I

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
    .line 210
    iget-object v0, p0, Lbar$5;->b:Lbar;

    .line 1037
    iget-object v0, v0, Lbar;->c:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lbar$5;->b:Lbar;

    .line 2037
    iget-object v0, v0, Lbar;->c:Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    .line 211
    iget v1, p0, Lbar$5;->a:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;->a(I)V

    .line 213
    :cond_0
    return-void
.end method
