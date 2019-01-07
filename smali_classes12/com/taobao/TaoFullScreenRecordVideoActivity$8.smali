.class final Lcom/taobao/TaoFullScreenRecordVideoActivity$8;
.super Ljava/lang/Object;
.source "TaoFullScreenRecordVideoActivity.java"

# interfaces
.implements Ljkt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/TaoFullScreenRecordVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/TaoFullScreenRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/TaoFullScreenRecordVideoActivity;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$8;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public final a(Lcom/taobao/av/ui/view/recordline/VideoBean;)V
    .locals 1
    .param p1, "vb"    # Lcom/taobao/av/ui/view/recordline/VideoBean;

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/taobao/TaoFullScreenRecordVideoActivity$8;->a:Lcom/taobao/TaoFullScreenRecordVideoActivity;

    invoke-static {v0}, Lcom/taobao/TaoFullScreenRecordVideoActivity;->a(Lcom/taobao/TaoFullScreenRecordVideoActivity;)V

    .line 238
    :cond_0
    return-void
.end method
