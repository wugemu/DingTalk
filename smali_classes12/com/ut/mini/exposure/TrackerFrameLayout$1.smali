.class Lcom/ut/mini/exposure/TrackerFrameLayout$1;
.super Ljava/lang/Object;
.source "TrackerFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/exposure/TrackerFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/exposure/TrackerFrameLayout;


# direct methods
.method constructor <init>(Lcom/ut/mini/exposure/TrackerFrameLayout;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$1;->this$0:Lcom/ut/mini/exposure/TrackerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ut/mini/exposure/TrackerFrameLayout$1;->this$0:Lcom/ut/mini/exposure/TrackerFrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ut/mini/exposure/TrackerFrameLayout;->access$000(Lcom/ut/mini/exposure/TrackerFrameLayout;IZ)V

    .line 107
    return-void
.end method
