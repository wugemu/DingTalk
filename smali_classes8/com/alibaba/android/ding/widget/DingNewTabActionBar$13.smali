.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;
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
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->i(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$13;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->i(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$a;->b()V

    .line 253
    :cond_0
    return-void
.end method
