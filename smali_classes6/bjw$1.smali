.class public final Lbjw$1;
.super Ljava/lang/Object;
.source "DingNotificationCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

.field final synthetic b:Lbjw;


# direct methods
.method public constructor <init>(Lbjw;Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)V
    .locals 0
    .param p1, "this$0"    # Lbjw;

    .prologue
    .line 64
    iput-object p1, p0, Lbjw$1;->b:Lbjw;

    iput-object p2, p0, Lbjw$1;->a:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lbjw$1;->b:Lbjw;

    iget-object v1, p0, Lbjw$1;->a:Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    invoke-static {v0, v1}, Lbjw;->a(Lbjw;Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    .line 68
    return-void
.end method
