.class final Ljow$1;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljow;-><init>(Landroid/content/Context;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljow;


# direct methods
.method constructor <init>(Ljow;)V
    .locals 0
    .param p1, "this$0"    # Ljow;

    .prologue
    .line 40
    iput-object p1, p0, Ljow$1;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Ljow$1;->a:Ljow;

    .line 1017
    iget-boolean v0, v0, Ljow;->b:Z

    .line 43
    if-eqz v0, :cond_0

    iget-object v0, p0, Ljow$1;->a:Ljow;

    .line 2017
    iget-boolean v0, v0, Ljow;->c:Z

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Ljow$1;->a:Ljow;

    .line 3017
    iget-object v0, v0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 44
    invoke-virtual {v0}, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->a()V

    .line 45
    iget-object v0, p0, Ljow$1;->a:Ljow;

    .line 4017
    const/4 v1, 0x0

    iput-boolean v1, v0, Ljow;->c:Z

    .line 47
    :cond_0
    return-void
.end method
