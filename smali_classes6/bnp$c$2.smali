.class final Lbnp$c$2;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbnp$c;


# direct methods
.method constructor <init>(Lbnp$c;)V
    .locals 0
    .param p1, "this$1"    # Lbnp$c;

    .prologue
    .line 397
    iput-object p1, p0, Lbnp$c$2;->a:Lbnp$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lbnp$c$2;->a:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->h:Lbnp;

    invoke-static {v0}, Lbnp;->b(Lbnp;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 401
    return-void
.end method
