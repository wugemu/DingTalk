.class final Lfcg$c$2;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcg$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcg$c;


# direct methods
.method constructor <init>(Lfcg$c;)V
    .locals 0
    .param p1, "this$1"    # Lfcg$c;

    .prologue
    .line 399
    iput-object p1, p0, Lfcg$c$2;->a:Lfcg$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lfcg$c$2;->a:Lfcg$c;

    iget-object v0, v0, Lfcg$c;->h:Lfcg;

    invoke-static {v0}, Lfcg;->b(Lfcg;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 403
    return-void
.end method
