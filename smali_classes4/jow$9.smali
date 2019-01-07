.class final Ljow$9;
.super Ljava/lang/Object;
.source "NormalVideoView.java"

# interfaces
.implements Ljon$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljow;->b(Z)V
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
    .line 163
    iput-object p1, p0, Ljow$9;->a:Ljow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Ljow$9;->a:Ljow;

    .line 1017
    iget-object v0, v0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 166
    const/4 v1, 0x1

    .line 1538
    iput-boolean v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Ljow$9;->a:Ljow;

    .line 2017
    iget-object v0, v0, Ljow;->a:Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;

    .line 2538
    iput-boolean v1, v0, Lcom/taobao/taobaoavsdk/widget/media/TaoLiveVideoView;->E:Z

    .line 173
    return v1
.end method
