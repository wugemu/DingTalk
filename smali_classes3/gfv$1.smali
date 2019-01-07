.class final Lgfv$1;
.super Ljava/lang/Object;
.source "VideoFilePreviewWebViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfv;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/functions/preview/FilePreviewRootView;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgfv;


# direct methods
.method constructor <init>(Lgfv;)V
    .locals 0
    .param p1, "this$0"    # Lgfv;

    .prologue
    .line 64
    iput-object p1, p0, Lgfv$1;->a:Lgfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lgfv$1;->a:Lgfv;

    invoke-virtual {v0}, Lgfv;->h()V

    .line 68
    return-void
.end method
