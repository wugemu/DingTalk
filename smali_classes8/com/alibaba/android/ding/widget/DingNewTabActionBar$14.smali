.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;
.super Ljava/lang/Object;
.source "DingNewTabActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1318
    const-string/jumbo v0, "ding_notification"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 262
    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 263
    invoke-static {v2}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$14;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .line 264
    invoke-static {v3}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->a(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)I

    move-result v3

    .line 261
    invoke-static {v0, v1, v2, v3}, Lbjv;->a(Landroid/app/Activity;III)V

    .line 267
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
