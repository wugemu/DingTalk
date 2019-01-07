.class final Ldlx$1;
.super Ljava/lang/Object;
.source "PopupGalleryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldlx;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldlx;


# direct methods
.method constructor <init>(Ldlx;)V
    .locals 0
    .param p1, "this$0"    # Ldlx;

    .prologue
    .line 103
    iput-object p1, p0, Ldlx$1;->a:Ldlx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v1, p0, Ldlx$1;->a:Ldlx;

    invoke-static {v1}, Ldlx;->a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v1

    invoke-static {v1}, Ldlx;->a(Landroid/app/Activity;)Ldlx$a;

    move-result-object v0

    .line 107
    .local v0, "imageObject":Ldlx$a;
    iget-object v1, p0, Ldlx$1;->a:Ldlx;

    invoke-static {v1, v0}, Ldlx;->a(Ldlx;Ldlx$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ldlx$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Ldlx$1;->a:Ldlx;

    invoke-static {v1, v0}, Ldlx;->b(Ldlx;Ldlx$a;)V

    .line 109
    iget-object v1, p0, Ldlx$1;->a:Ldlx;

    invoke-static {v1, v0}, Ldlx;->c(Ldlx;Ldlx$a;)V

    .line 111
    :cond_0
    return-void
.end method
